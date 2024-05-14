import Layout from '../../Layout';
import React, { useState, useEffect } from 'react';

export default function UpdateSchedule({ title, data }) {
    const [csrf, setCsrf] = useState('');
    const [showError, setShowError] = useState(false);
    const [errorMessage, setErrorMessage] = useState('');
    const [showSuccess, setShowSuccess] = useState(false);
    const [successMessage, setSuccessMessage] = useState(''); 
    const [hari, setHari] = useState('');
    const [jadwal, setJadwal] = useState('');
    const [jamMulai, setJamMulai] = useState('');
    const [jamAkhir, setJamAkhir] = useState('');

    useEffect(() => {
        const csrfToken = document.querySelector('meta[name="csrf"]').getAttribute('content');
        setCsrf(csrfToken);

        if (data && data.jadwal) {
            setJadwal(data.jadwal);
            setHari(data.hari);
            const [mulai, akhir] = data.jam.split(' - ');
            setJamMulai(mulai);
            setJamAkhir(akhir);
        }
        
    }, [data]);

    const handleSubmit = async (e) => {
        e.preventDefault();
        
        try {
            const response = await fetch(`update`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrf
                },
                body: JSON.stringify({ hari, jadwal, jam: `${jamMulai} - ${jamAkhir}` })
            });
    
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
    
            const responseData = await response.json();
    
            if (responseData.code === 200) {
                setSuccessMessage(responseData.message);
                setShowSuccess(true);
                setTimeout(() => {
                    setShowSuccess(false);
                    setSuccessMessage('');
                }, 5000);
            } else {
                setErrorMessage(responseData.message);
                setShowError(true);
                setTimeout(() => setShowError(false), 5000);
            }
        } catch (error) {
            setShowError(true);
            setErrorMessage('Error posting data: ' + error.message);
            setShowSuccess(false);
            setTimeout(() => setShowError(false), 5000);
            console.error('Error posting data:', error);
        }
    };

    const handleGoBack = () => {
        window.history.back();
    };

    const daysOfWeek = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'];

    return (
        <Layout>
            <div className='animate-slide-bottom-to-top p-5'>
                {showError && (
                    <div className="animate-slide-top-to-bottom bg-red-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                        {errorMessage}
                    </div>
                )}
                {showSuccess && (
                    <div className="animate-slide-top-to-bottom bg-green-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                        {successMessage}
                    </div>
                )}
                <div className='flex justify-between items-center uppercase text-center bg-[#1858ac] rounded-lg px-7 py-5 text-white font-bold text-xl'>
                    <div>{title}</div>
                    <button type="button" onClick={handleGoBack} className="ml-4 p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                            <path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" />
                        </svg>
                    </button>
                </div>
                <div className='py-5 text-[#1858ac] font-bold'>
                    <form onSubmit={handleSubmit}>
                        <div className='flex flex-col mb-5'>
                            <label htmlFor="hari" className="mb-1">Hari</label>
                            <select
                                id="hari"
                                value={hari}
                                onChange={(e) => setHari(e.target.value)}
                                className="border border-gray-300 rounded-md p-2 mt-1 focus:outline-none focus:ring-2 focus:ring-[#1858ac] focus:border-transparent"
                            >
                                <option value="">Pilih Hari</option>
                                {daysOfWeek.map((day, index) => (
                                    <option key={index} value={day}>{day}</option>
                                ))}
                            </select>
                        </div>
                        <div className='flex flex-col mb-5'>
                            <label htmlFor="jadwal">Jadwal</label>
                            <input
                                type="date"
                                id="jadwal"
                                value={jadwal}
                                onChange={(e) => setJadwal(e.target.value)}
                                className="border border-gray-300 rounded-md p-2 mt-1 focus:outline-none focus:ring-2 focus:ring-[#1858ac] focus:border-transparent"
                            />
                        </div>
                        <div className='flex flex-col mb-5'>
                            <label htmlFor="jamMulai">Jam Mulai</label>
                            <input
                                type="time"
                                id="jamMulai"
                                value={jamMulai}
                                onChange={(e) => setJamMulai(e.target.value)}
                                className="border border-gray-300 rounded-md p-2 mt-1 focus:outline-none focus:ring-2 focus:ring-[#1858ac] focus:border-transparent"
                            />
                        </div>
                        <div className='flex flex-col mb-5'>
                            <label htmlFor="jamAkhir">Jam Akhir</label>
                            <input
                                type="time"
                                id="jamAkhir"
                                value={jamAkhir}
                                onChange={(e) => setJamAkhir(e.target.value)}
                                className="border border-gray-300 rounded-md p-2 mt-1 focus:outline-none focus:ring-2 focus:ring-[#1858ac] focus:border-transparent"
                            />
                        </div>
                        <button type="submit" className="bg-yellow-400 text-white rounded-md px-4 py-2 mt-4 transition-colors duration-300">Submit</button>
                    </form>
                </div>
            </div>
        </Layout>
    );
}
