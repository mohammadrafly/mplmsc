import React from 'react';
import BottomNavbar from '../Pages/Components/BottomNavbar';
import { Head } from '@inertiajs/react';

export default function Layout({ children, title }) {
  const currentPathname = window.location.pathname;
  const pathnameWithoutSlash = currentPathname.startsWith('/') ? currentPathname.slice(1) : currentPathname;

  return (
    <div className='min-h-screen bg-white'>
      <Head title={title} />
      {children}
      <BottomNavbar url={pathnameWithoutSlash} />
    </div>
  );
}
