import Layout from '../Layout';
import { Head } from '@inertiajs/react'
import React from 'react';

export default function Index({ user }) {
    return (
        <Layout>
            <div className='p-10'>
                <div className='bg-[#043474] rounded-3xl px-7 py-10 text-white font-bold text-xl'>
                    Hi, <br/>
                    <h1>{user.name}</h1>
                </div>
            </div>
        </Layout>
    )
}