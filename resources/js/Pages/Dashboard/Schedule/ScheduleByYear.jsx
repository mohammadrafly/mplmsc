import Layout from '../../Layout';
import React from 'react';
import { Link } from '@inertiajs/react';

export default function ScheduleByYear({ title, data }) {
    console.log(data);
    return (
        <Layout>
            <div className='animate-slide-bottom-to-top p-5'>
                <div className='uppercase text-center bg-[#1858ac] rounded-lg px-7 py-5 text-white font-bold text-xl flex justify-center items-center'>
                    {title}
                </div>
                <div className="mt-5 py-5">
                    {data.map((item, index) => (
                        <Link
                            href={`${item.tahun}/single/${item.id}`}
                            key={index}
                            className="mb-4 flex justify-between items-center"
                        >
                            <div className='bg-[#1858ac] text-white p-3 rounded-xl'>
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                                    <path strokeLinecap="round" strokeLinejoin="round" d="M3 3v1.5M3 21v-6m0 0 2.77-.693a9 9 0 0 1 6.208.682l.108.054a9 9 0 0 0 6.086.71l3.114-.732a48.524 48.524 0 0 1-.005-10.499l-3.11.732a9 9 0 0 1-6.085-.711l-.108-.054a9 9 0 0 0-6.208-.682L3 4.5M3 15V4.5" />
                                </svg>
                            </div>
                            <h2 className="text-lg font-semibold mb-2">{item.nama_jadwal}</h2>
                            <div>
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                                    <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                                </svg>
                            </div>
                        </Link>
                    ))}
                </div>
            </div>
        </Layout>
    )
}
