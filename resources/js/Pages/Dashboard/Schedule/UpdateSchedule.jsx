import Layout from '../../Layout';
import React, { useState } from 'react';

export default function UpdateSchedule({ title, data }) {
    const [showError, setShowError] = useState(false);
    const [errorMessage, setErrorMessage] = useState('');
    const [hari, setHari] = useState('');
    const [jadwal, setJadwal] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();
        
        try {
            const response = await fetch(`${id}`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrf
                },
                body: JSON.stringify({ koneksi })
            });
    
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
    
            const data = await response.json();
    
            if (data.code === 200) {
                setSuccessMessage(data.message);
                setShowSuccess(true);
                setTimeout(() => setShowSuccess(false), 5000);
            } else {
                setShowError(data.message);
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

    return (
        <Layout>
            <div className='animate-slide-bottom-to-top p-5'>
                {showError && (
                    <div className="animate-slide-top-to-bottom bg-red-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                        {errorMessage}
                    </div>
                )}
                <div className='flex justify-center items-center uppercase text-center bg-[#1858ac] rounded-lg px-7 py-5 text-white font-bold text-xl'>
                    <div>{title}</div>
                </div>
                <div className='py-5 text-[#1858ac] font-bold'>
                    <form onSubmit={handleSubmit}>
                        <div>
                            <label htmlFor="hari">Hari:</label>
                            <input
                                type="text"
                                id="hari"
                                value={hari}
                                onChange={(e) => setHari(e.target.value)}
                            />
                        </div>
                        <div>
                            <label htmlFor="jadwal">Jadwal:</label>
                            <input
                                type="date"
                                id="jadwal"
                                value={jadwal}
                                onChange={(e) => setJadwal(e.target.value)}
                            />
                        </div>
                        <button type="submit">Submit</button>
                    </form>
                </div>
            </div>
        </Layout>
    );
}
