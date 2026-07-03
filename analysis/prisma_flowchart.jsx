import React from 'react';

const PRISMAFlowDiagram = () => {
  const boxStyle = "border-2 border-gray-700 bg-white p-3 text-center text-sm rounded shadow-sm";
  const blueBox = "border-2 border-blue-600 bg-blue-50 p-3 text-center text-sm rounded shadow-sm";
  const greenBox = "border-2 border-green-600 bg-green-50 p-3 text-center text-sm rounded shadow-sm";
  const redBox = "border-2 border-red-500 bg-red-50 p-3 text-center text-sm rounded shadow-sm";
  const arrowDown = "flex justify-center my-1";
  
  return (
    <div className="p-4 bg-gray-50 min-h-screen">
      <h1 className="text-xl font-bold text-center mb-2 text-gray-800">PRISMA 2020 Flow Diagram</h1>
      <p className="text-center text-gray-600 mb-4 text-sm">Probiotic/Prebiotic/Synbiotic/FMT Interventions for Autism Spectrum Disorder</p>
      
      <div className="max-w-4xl mx-auto">
        {/* IDENTIFICATION */}
        <div className="mb-2">
          <div className="bg-blue-100 text-blue-800 font-semibold px-3 py-1 rounded text-sm inline-block mb-2">IDENTIFICATION</div>
        </div>
        
        <div className="flex justify-between gap-4 mb-2">
          <div className={`${blueBox} flex-1`}>
            <div className="font-semibold">Records identified from databases</div>
            <div className="text-xs text-gray-600 mt-1">PubMed, Embase, Cochrane, PsycINFO, Web of Science</div>
            <div className="font-bold text-lg mt-1">n = 847</div>
          </div>
          <div className={`${blueBox} flex-1`}>
            <div className="font-semibold">Records identified from other sources</div>
            <div className="text-xs text-gray-600 mt-1">Citation searching, reference lists</div>
            <div className="font-bold text-lg mt-1">n = 23</div>
          </div>
        </div>
        
        <div className={arrowDown}><span className="text-2xl text-gray-400">↓</span></div>
        
        {/* SCREENING */}
        <div className="mb-2">
          <div className="bg-yellow-100 text-yellow-800 font-semibold px-3 py-1 rounded text-sm inline-block mb-2">SCREENING</div>
        </div>
        
        <div className="flex gap-4 mb-2">
          <div className={`${boxStyle} flex-1`}>
            <div className="font-semibold">Records after duplicates removed</div>
            <div className="font-bold text-lg mt-1">n = 612</div>
          </div>
          <div className={`${redBox} flex-1`}>
            <div className="font-semibold">Duplicates removed</div>
            <div className="font-bold text-lg mt-1">n = 258</div>
          </div>
        </div>
        
        <div className={arrowDown}><span className="text-2xl text-gray-400">↓</span></div>
        
        <div className="flex gap-4 mb-2">
          <div className={`${boxStyle} flex-1`}>
            <div className="font-semibold">Records screened (title/abstract)</div>
            <div className="font-bold text-lg mt-1">n = 612</div>
          </div>
          <div className={`${redBox} flex-1`}>
            <div className="font-semibold">Records excluded</div>
            <div className="text-xs text-gray-600 mt-1">Not RCT, not ASD, not probiotic/FMT, reviews, protocols</div>
            <div className="font-bold text-lg mt-1">n = 541</div>
          </div>
        </div>
        
        <div className={arrowDown}><span className="text-2xl text-gray-400">↓</span></div>
        
        <div className="flex gap-4 mb-2">
          <div className={`${boxStyle} flex-1`}>
            <div className="font-semibold">Full-text articles assessed for eligibility</div>
            <div className="font-bold text-lg mt-1">n = 71</div>
          </div>
          <div className={`${redBox} flex-1`}>
            <div className="font-semibold">Full-text articles excluded</div>
            <div className="font-bold text-lg mt-1">n = 62</div>
            <div className="text-xs text-left mt-2 text-gray-700">
              <div>• No behavioral outcomes: 18</div>
              <div>• Data not extractable: 14</div>
              <div>• Open-label/no control: 12</div>
              <div>• Crossover design: 8</div>
              <div>• Change scores only: 5</div>
              <div>• High attrition (&gt;50%): 3</div>
              <div>• Duplicate data: 2</div>
            </div>
          </div>
        </div>
        
        <div className={arrowDown}><span className="text-2xl text-gray-400">↓</span></div>
        
        {/* INCLUDED */}
        <div className="mb-2">
          <div className="bg-green-100 text-green-800 font-semibold px-3 py-1 rounded text-sm inline-block mb-2">INCLUDED</div>
        </div>
        
        <div className={`${greenBox} max-w-md mx-auto mb-4`}>
          <div className="font-semibold">Studies included in quantitative synthesis (meta-analysis)</div>
          <div className="font-bold text-2xl mt-2 text-green-700">k = 9</div>
          <div className="font-bold text-lg text-green-700">n = 663 participants</div>
        </div>
        
        {/* Study breakdown */}
        <div className="grid grid-cols-3 gap-2 mt-4">
          <div className="border border-green-400 bg-green-50 p-2 rounded text-xs">
            <div className="font-semibold text-green-800">Probiotic RCTs</div>
            <div className="text-green-700">k = 6</div>
          </div>
          <div className="border border-blue-400 bg-blue-50 p-2 rounded text-xs">
            <div className="font-semibold text-blue-800">Prebiotic RCT</div>
            <div className="text-blue-700">k = 1</div>
          </div>
          <div className="border border-purple-400 bg-purple-50 p-2 rounded text-xs">
            <div className="font-semibold text-purple-800">Synbiotic RCT</div>
            <div className="text-purple-700">k = 1</div>
          </div>
        </div>
        <div className="flex justify-center mt-2">
          <div className="border border-orange-400 bg-orange-50 p-2 rounded text-xs">
            <div className="font-semibold text-orange-800">FMT RCT</div>
            <div className="text-orange-700">k = 1</div>
          </div>
        </div>
        
        {/* Footer */}
        <div className="mt-6 text-xs text-gray-500 text-center">
          <p>Flow diagram template based on PRISMA 2020 statement</p>
          <p>Page et al. (2021) BMJ 372:n71</p>
        </div>
      </div>
    </div>
  );
};

export default PRISMAFlowDiagram;
