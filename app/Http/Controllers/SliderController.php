<?php

namespace App\Http\Controllers;
use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use function PHPUnit\Framework\returnSelf;

class SliderController extends Controller
{
    public function addslider(){
        return view('admin.addslider');
    }

    public function saveslider(Request $request){

        $this->validate($request, [
            'description1' => 'required',
            'description2' => 'required',
            'slider_image' => 'image|required|max:1999'
        ]);


                $fileNameWithExt = $request->file('slider_image')->getClientOriginalName();
                // 2 : get juste file name
                $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
                // 3 : get juste file extension
                $extension = $request->file('slider_image')->getClientOriginalExtension();
                // 4 : file name to store
                $fileNameToStore = $fileName . '_' . time() . '.' . $extension;

                // upload image
                $path = $request->file('slider_image')->storeAs('public/slider_images', $fileNameToStore);

                $slider = new Slider();
                $slider->description1 = $request->input('description1');
                $slider->description2 = $request->input('description2');
                $slider->slider_image = $fileNameToStore;
                $slider->status =  1 ;

                $slider->save();

                return back()->with('status', 'Le slider a été enregistrée avec succès !');

    }

    public function edit_slider($id){
        $slider = Slider::find($id);

        return  view('admin.editslider')->with('slider', $slider);
    }

    public function updateslider(Request $request){

        $this->validate($request, [
            'description1' => 'required',
            'description2' => 'required',
            'slider_image' => 'image||max:1999'
        ]);

        $slider = Slider::find($request->input('id'));
        $slider->description1 = $request->input('description1');
        $slider->description2 = $request->description2;


        if($request->hasFile('slider_image')){
                   // 1 : get file name with exte
                   $fileNameWithExt = $request->file('slider_image')->getClientOriginalName();
                   // 2 : get juste file name
                   $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
                   // 3 : get juste file extension
                   $extension = $request->file('slider_image')->getClientOriginalExtension();
                   // 4 : file name to store
                   $fileNameToStore = $fileName . '_' . time() . '.' . $extension;

                   // upload image
                   $path = $request->file('slider_image')->storeAs('public/slider_images', $fileNameToStore);


                    Storage::delete('public/slider_images/'.$slider->slider_image);


                   $slider->slider_image = $fileNameToStore;

                   $slider->update();
        }

        $slider->update();

        return redirect('/sliders')->with('status', 'Le modifié a été modifié avec succès !');
    }

    public function delete_slider($id){
        $slider = Slider::find($id);

            Storage::delete('public/slider_images/'.$slider->slider_image);


        $slider->delete();

        return back()->with('status', 'Le slider a été supprimé avec succès !');

    }

    public function activer_slider($id){
        $slider = Slider::find($id);

        $slider->status = 1;

        $slider->update();

        return back();
    }

    public function desactiver_slider($id){
        $slider = Slider::find($id);

        $slider->status = 0;

        $slider->update();

        return back();
    }

    public function sliders(){
        $sliders = Slider::All();

        return view('admin.sliders')->with('sliders', $sliders);
    }
}
