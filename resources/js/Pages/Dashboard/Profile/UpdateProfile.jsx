import React, { useState, useEffect } from 'react';
import Layout from '../../Layout';

const DefaultPhotoSVG = (
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-32 h-32">
        <path strokeLinecap="round" strokeLinejoin="round" d="M17.982 18.725A7.488 7.488 0 0 0 12 15.75a7.488 7.488 0 0 0-5.982 2.975m11.963 0a9 9 0 1 0-11.963 0m11.963 0A8.966 8.966 0 0 1 12 21a8.966 8.966 0 0 1-5.982-2.275M15 9.75a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
    </svg>
);

export default function UpdateProfile({ title, data, urlFoto, role }) {
    const [csrf, setCsrf] = useState('');
    const [photo, setPhoto] = useState(null);
    const [photoPreview, setPhotoPreview] = useState(null);
    const [name, setName] = useState(data.name);
    const [email, setEmail] = useState(data.email);
    const [showSuccess, setShowSuccess] = useState(false); 

    useEffect(() => {
        const csrfToken = document.querySelector('meta[name="csrf"]').getAttribute('content');
        setCsrf(csrfToken);

        if (data.foto) {
            setPhotoPreview(
                <img src={urlFoto} alt="User's Photo" className="h-32 w-32 mb-2 object-cover rounded-full shadow-lg" />
            );
        } else {
            setPhotoPreview(DefaultPhotoSVG);
        }
    }, []);

    const handleSubmit = async (event) => {
        event.preventDefault();
    
        try {
            const formData = new FormData();
            if (photo) {
                formData.append('photo', photo);
            } else {
                console.log('No new photo selected');
            }
    
            formData.append('name', name);
            formData.append('email', email);
    
            const headers = {};
            if (csrf) {
                headers['X-CSRF-TOKEN'] = csrf;
            } else {
                throw new Error('CSRF token is undefined');
            }
    
            const response = await fetch('', {
                method: 'POST',
                headers,
                body: formData
            });
    
            const responseData = await response.json();
            
            if (responseData.code === 200) {
                setShowSuccess(true);
                setTimeout(() => setShowSuccess(false), 3000);
            } else {
                setError(responseData.message);
            }
        } catch (error) {
            console.error('Error:', error);
        }
    };    

    const handlePhotoChange = (event) => {
        const selectedPhoto = event.target.files[0];
        setPhoto(selectedPhoto);

        const photoUrl = URL.createObjectURL(selectedPhoto);
        setPhotoPreview(<img src={photoUrl} alt="Preview" className="h-32 w-32 mb-2 object-cover rounded-full shadow-xl" />);
    };

    const handleGoBack = () => {
        window.history.back();
    };

    return (
        <Layout>
            <div className='animate-slide-bottom-to-top p-10 text-[#043474]'>
                <div className='flex justify-between items-center'>
                    <h1 className='font-bold text-3xl text-[#043474]'>{title}</h1>
                    <button type="button" onClick={handleGoBack} className="ml-4 p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                            <path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" />
                        </svg>
                    </button>
                </div>
                {showSuccess && (
                    <div className="animate-slide-top-to-bottom bg-green-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                        Profile updated successfully!
                    </div>
                )}
                <form onSubmit={handleSubmit} className='mt-10' encType="multipart/form-data">
                    <div className="flex justify-center items-center">
                        <label htmlFor="photo" className="cursor-pointer">
                            {photoPreview}
                            <input type="file" id="photo" onChange={handlePhotoChange} className="hidden" />
                        </label>
                    </div>
                    <div className='mb-5'>
                        <label htmlFor="name">Name</label>
                        <input type="text" id="name" value={name} onChange={(e) => setName(e.target.value)} className='rounded-lg py-2 px-4 bg-gray-200 w-full'/>
                    </div>
                    {role !== "mahasiswa" && (
                        <div className='mb-5'>
                            <label htmlFor="email">Email</label>
                            <input type="text" id="email" value={email} onChange={(e) => setEmail(e.target.value)} className='rounded-lg py-2 px-4 bg-gray-200 w-full'/>
                        </div>
                    )}
                    <button type="submit" className="bg-sky-500 text-white font-bold py-2 px-4 rounded-lg">
                        Simpan
                    </button>
                </form>
            </div>
        </Layout>
    )
}