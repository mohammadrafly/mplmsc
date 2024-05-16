import React from 'react';
import BottomNavbar from '../Pages/Components/BottomNavbar';

export default function Layout({ children, title }) {
  const currentPathname = window.location.pathname;
  const pathnameWithoutSlash = currentPathname.startsWith('/') ? currentPathname.slice(1) : currentPathname;

  return (
  <div className="min-h-screen bg-white pb-16">
      <div>
        {children}
      </div>
      <div className="fixed bottom-0 w-full z-20">
        <BottomNavbar url={pathnameWithoutSlash} />
      </div>
    </div>
  );
}
