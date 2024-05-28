import { lazy } from 'react'
import { createBrowserRouter } from 'react-router-dom'

const HomePage = lazy(() => import('../pages/HomePage'))
const ErrorPage = lazy(() => import('../pages/ErrorPage'))

export const routers = createBrowserRouter([
  {
    path: '/',
    element: <HomePage />,
    errorElement: <ErrorPage />,
  },
])
