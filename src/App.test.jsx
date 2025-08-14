import React from 'react';
import { useState } from 'react';
import { render, screen } from '@testing-library/react';
import App from './App';

test('hello vite + react!', () => {
  render(<App />);
  const linkElement = screen.getByText(/hello vite \+ react!/i);
  expect(linkElement).toBeInTheDocument();
});
