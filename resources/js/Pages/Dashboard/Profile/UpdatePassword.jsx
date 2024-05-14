import React, { useState, useEffect } from 'react';
import Layout from '../../Layout';

export default function UpdatePassword({ title }) {
    const [csrf, setCsrf] = useState('');
    const [oldPassword, setOldPassword] = useState('');
    const [newPassword, setNewPassword] = useState('');
    const [confirmNewPassword, setConfirmNewPassword] = useState('');
    const [showSuccess, setShowSuccess] = useState(false);
    const [showError, setShowError] = useState(false);
    const [errorMessage, setErrorMessage] = useState('');
    const [showPassword, setShowPassword] = useState(false); 
    const [showNewPassword, setShowNewPassword] = useState(false); 
    const [showConfirmPassword, setShowConfirmPassword] = useState(false); 

    useEffect(() => {
        const csrfToken = document.querySelector('meta[name="csrf"]').getAttribute('content');
        setCsrf(csrfToken);
    }, []);

    const handleSubmit = async (event) => {
        event.preventDefault();

        if (newPassword !== confirmNewPassword) {
            setShowError(true);
            setErrorMessage("New password and confirm password don't match.");
            setTimeout(() => {
                setShowError(false);
            }, 3000);
            return;
        }

        try {
            const formData = new FormData();

            formData.append('old_password', oldPassword);
            formData.append('new_password', newPassword);

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
                setTimeout(() => {
                    setShowSuccess(false);
                    setOldPassword('');
                    setNewPassword('');
                    setConfirmNewPassword('');
                }, 3000);
            } else {
                setShowError(true);
                setErrorMessage(responseData.message);
                setTimeout(() => {
                    setShowError(false);
                }, 3000);
                return;
            }
        } catch (error) {
            setShowError(true);
            setErrorMessage('Error occurred while processing your request.');
            setTimeout(() => {
                setShowError(false);
            }, 3000);
            console.error('Error:', error);
        }
    };

    const handleGoBack = () => {
        window.history.back();
    };

    const togglePasswordVisibility = () => {
        setShowPassword(!showPassword);
    };

    const toggleNewPasswordVisibility = () => {
        setShowNewPassword(!showNewPassword);
    };

    const toggleConfirmPasswordVisibility = () => {
        setShowConfirmPassword(!showConfirmPassword);
    };

    return (
        <Layout>
            <div className='animate-slide-bottom-to-top p-10 text-[#043474]'>
                <div className='flex justify-between items-center'>
                    <h1 className='font-bold text-3xl text-[#043474]'>{title}</h1>
                    <button type="button" onClick={handleGoBack} className="ml-4 p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-6 h-6">
                            <path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" />
                        </svg>
                    </button>
                </div>
                {showSuccess && (
                    <div className="animate-slide-top-to-bottom bg-green-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                        Password updated successfully!
                    </div>
                )}
                {showError && (
                    <div className="animate-slide-top-to-bottom bg-red-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                        {errorMessage}
                    </div>
                )}
                <form onSubmit={handleSubmit} className='mt-10' encType="multipart/form-data">
                    <div className='mb-5'>
                        <label htmlFor="password">Password Lama</label>
                        <div className="relative">
                            <input type={showPassword ? "text" : "password"} id="old_password" value={oldPassword} onChange={(e) => setOldPassword(e.target.value)} className='border border-gray-300 rounded-lg py-2 px-4 w-full'/>
                            <button type="button" onClick={togglePasswordVisibility} className="absolute top-1/2 right-4 transform -translate-y-1/2">
                                {showPassword ? (
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M3.98 8.223A10.477 10.477 0 0 0 1.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.451 10.451 0 0 1 12 4.5c4.756 0 8.773 3.162 10.065 7.498a10.522 10.522 0 0 1-4.293 5.774M6.228 6.228 3 3m3.228 3.228 3.65 3.65m7.894 7.894L21 21m-3.228-3.228-3.65-3.65m0 0a3 3 0 1 0-4.243-4.243m4.242 4.242L9.88 9.88" />
                                    </svg>
                                ) : (
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 0 1 0-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178Z" />
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                                    </svg>
                                )}
                            </button>
                        </div>
                    </div>
                    <div className='mb-5'>
                        <label htmlFor="new_password">Password Baru</label>
                        <div className="relative">
                            <input type={showNewPassword ? "text" : "password"} id="new_password" value={newPassword} onChange={(e) => setNewPassword(e.target.value)} className='border border-gray-300 rounded-lg py-2 px-4 w-full'/>
                            <button type="button" onClick={toggleNewPasswordVisibility} className="absolute top-1/2 right-4 transform -translate-y-1/2">
                                {showNewPassword ? (
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M3.98 8.223A10.477 10.477 0 0 0 1.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.451 10.451 0 0 1 12 4.5c4.756 0 8.773 3.162 10.065 7.498a10.522 10.522 0 0 1-4.293 5.774M6.228 6.228 3 3m3.228 3.228 3.65 3.65m7.894 7.894L21 21m-3.228-3.228-3.65-3.65m0 0a3 3 0 1 0-4.243-4.243m4.242 4.242L9.88 9.88" />
                                    </svg>
                                ) : (
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 0 1 0-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178Z" />
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                                    </svg>
                                )}
                            </button>
                        </div>
                    </div>
                    <div className='mb-5'>
                        <label htmlFor="confirm_new_password">Konfirmasi Password Baru</label>
                        <div className="relative">
                            <input type={showConfirmPassword ? "text" : "password"} id="confirm_new_password" value={confirmNewPassword} onChange={(e) => setConfirmNewPassword(e.target.value)} className='border border-gray-300 rounded-lg py-2 px-4 w-full'/>
                            <button type="button" onClick={toggleConfirmPasswordVisibility} className="absolute top-1/2 right-4 transform -translate-y-1/2">
                                {showConfirmPassword ? (
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M3.98 8.223A10.477 10.477 0 0 0 1.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.451 10.451 0 0 1 12 4.5c4.756 0 8.773 3.162 10.065 7.498a10.522 10.522 0 0 1-4.293 5.774M6.228 6.228 3 3m3.228 3.228 3.65 3.65m7.894 7.894L21 21m-3.228-3.228-3.65-3.65m0 0a3 3 0 1 0-4.243-4.243m4.242 4.242L9.88 9.88" />
                                    </svg>
                                ) : (
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 0 1 0-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178Z" />
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                                    </svg>
                                )}
                            </button>
                        </div>
                    </div>
                    <button type="submit" className="bg-yellow-400 text-white font-bold py-2 px-4 rounded-lg">
                        Simpan
                    </button>
                </form>
            </div>
        </Layout>
    )
}
