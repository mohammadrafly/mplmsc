import Layout from '../Layout';
import React, { useState, useEffect } from 'react';

export default function Notification({ title, data }) {
    const [csrf, setCsrf] = useState('');
    const [notifications, setNotifications] = useState(data);
    const [showSuccess, setShowSuccess] = useState(false);
    const [successMessage, setSuccessMessage] = useState('');
    const [showError, setShowError] = useState(false);
    const [errorMessage, setErrorMessage] = useState('');

    useEffect(() => {
        const csrfToken = document.querySelector('meta[name="csrf"]').getAttribute('content');
        setCsrf(csrfToken);
    }, []);

    const handleSetAsRead = async (id, index) => {
        try {
            const response = await fetch('notification', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrf
                },
                body: JSON.stringify({ id: id }),
            });
    
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
    
            const responseData = await response.json();
    
            if (responseData.code === 200) {
                const updatedNotifications = [...notifications];
                updatedNotifications[index].read = '1';
                setNotifications(updatedNotifications);
    
                setShowSuccess(true);
                setSuccessMessage(responseData.message);
                setTimeout(() => {
                    setShowSuccess(false);
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
            console.error('Error:', error);
            setShowError(true);
            setErrorMessage('Failed to mark notification as read. Please try again later.');
        }
    };

    return (
        <Layout>
            <div className='animate-slide-bottom-to-top p-5'>
                <div className='uppercase text-center bg-[#1858ac] rounded-lg px-7 py-5 text-white font-bold text-xl flex justify-center items-center'>
                    {title}
                </div>
                <div className='mt-5'>
                {notifications.map((notif, index) => (
                    <div key={index} onClick={() => handleSetAsRead(notif.id, index)} className={`bg-gray-200 rounded-lg p-4 mb-4 flex justify-between items-center gap-5`}>
                        <div className={`${notif.read === '1' ? 'text-gray-500' : 'text-black'}`}>
                            {notif.read === '1' ? (
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-10 h-10">
                                    <path strokeLinecap="round" strokeLinejoin="round" d="M14.857 17.082a23.848 23.848 0 0 0 5.454-1.31A8.967 8.967 0 0 1 18 9.75V9A6 6 0 0 0 6 9v.75a8.967 8.967 0 0 1-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 0 1-5.714 0m5.714 0a3 3 0 1 1-5.714 0" />
                                </svg>
                            ) : (
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-10 h-10">
                                    <path strokeLinecap="round" strokeLinejoin="round" d="M14.857 17.082a23.848 23.848 0 0 0 5.454-1.31A8.967 8.967 0 0 1 18 9.75V9A6 6 0 0 0 6 9v.75a8.967 8.967 0 0 1-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 0 1-5.714 0m5.714 0a3 3 0 1 1-5.714 0M3.124 7.5A8.969 8.969 0 0 1 5.292 3m13.416 0a8.969 8.969 0 0 1 2.168 4.5" />
                                </svg>
                            )}
                        </div>
                        <div className='flex justify-between items-center'>
                            <span className={`text-base ${notif.read === '1' ? 'text-gray-500' : 'text-black'}`}>
                                {notif.message}
                            </span>
                        </div>
                    </div>
                ))}
                </div>
            </div>
            {showSuccess && (
                <div className="animate-slide-top-to-bottom bg-green-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                    {successMessage}
                </div>
            )}
            {showError && (
                <div className="animate-slide-top-to-bottom bg-red-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                    {errorMessage}
                </div>
            )}
        </Layout>
    );
}
