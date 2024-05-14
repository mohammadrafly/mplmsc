import React from 'react';
import BottomNavbar from '../Pages/Components/BottomNavbar';
import { Head } from '@inertiajs/react';

export default function Layout({ children, title }) {
  const currentPathname = window.location.pathname;
  const pathnameWithoutSlash = currentPathname.startsWith('/') ? currentPathname.slice(1) : currentPathname;

  return (
    <div className='min-h-screen bg-white relative pb-16'>
      <Head title={title} />
      {children}
      <div className="fixed bottom-0 w-full z-10">
        <BottomNavbar url={pathnameWithoutSlash} />
      </div>
    </div>
  );
}
