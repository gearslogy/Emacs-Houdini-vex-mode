;;; vex-mode.el --- sample major mode for editing LSL.

;; Copyright © 2015, by you

;; Author: your name ( your email )
;; Version: 2.0.13
;; Created: 26 Jun 2015
;; Keywords: languages
;; Homepage: http://ergoemacs.org/emacs/elisp_syntax_coloring.html

;; This file is not part of GNU Emacs.

;;; License:

;; You can redistribute this program and/or modify it under the terms of the GNU General Public License version 2.

;;; Commentary:

;; short description here

;; full doc on how to use here


;;; Code:

;; define several category of keywords
;;
;; 2015.12.27 gearslogy:write the vex-mode to the major mode
;; write the yasnippets for the auto complete...
;; now set my gearslogy-vex-mode here....

(setq vex-keywords '("break" "default" "do" "else" "for" "if" "return" "switch" "while" "case" "class") )
(setq vex-types '("float" "int" "vector" "matrix" "matrix3" "string" "matrix4"))
(setq vex-constants '("ACTIVE" "AGENT" "ALL_SIDES" "ATTACH_BACK"))
(setq vex-events '("at_rot_target" "at_target" "attach"))
(setq vex-functions '("geoself" "Du" "Dv" "Dw" "abs" "accessframe" "acos" "addattrib" "addattribute" "adddetailattrib" "addgroup" "addpoint" "addpointattrib"
                        "addprim" "addprimattrib" "addvariablename" "addvertex" "addvertexattrib" "agentclipcatalog" "agentcliplength" "agentclipnames" "agentclipsamplelocal"
                        "agentclipsampleworld" "agentcliptimes" "agentcliptimes" "agentcollisionlayer" "agentcurrentlayer" "agentlayerbindings"
                        "agentlayers" "agentlayershapes" "agentlocaltransform" "agentlocaltransforms" "agentrigchildren" "agentrigfind" "agentrigparent" "agenttransformcount" "agenttransformnames"
                        "agenttransformtolocal" "agenttransformtoworld" "agentworldtransform" "agentworldtransforms" "albedo" "alphaname" "ambient"
                        "anoise" "append" "area" "argsort" "array" "arraylength" "ashikhmin" "asin" "assgin" "atan" "atan2" "atan2" "atof" "atoi" "atten" "attribsize"
                        "attribtype" "attribtypeinfo" "avg" "binput" "blackbody" "blinn" "blinnBRDF" "bouncelabel" "bouncemask" "bumpmap"
                        "bumpmapA" "bumpmapB" "bumpmapG" "bumpmapR" "bumpmape" "cbrt"
                        "ceil" "ch" "chs" "ch3" "ch4" "chend" "chendf" "chendt" "chi" "chinput" "chname" "chnumchan" "chp" "chr" "chramp" "chrate" "chsraw" "chstart" "chstartf" "chv" "cinput" "ckspline" "clamp" "clip"
                        "colormap" "colorname" "computenormal" "concat" "cone" "cos" "cosh" "cracktransform" "cross" "cspline" "ctransform" "curlnoise" "curlnoise2d" "curlxnoise" "curlxnoise2d" "cvex_bsdf" "degrees" "depthmap"
                        "depthname" "detail" "detailattrib" "detailattribsize" "detailattribtype" "detailattribtype" "detailintrinsic" "determinant" "diffuse" "diffuseBRDF" "dihedral" "dimport" "distance" "distance2"
                        "dot" "dsmpixel" "eigenvalues" "emission_bsdf" "endswith" "environment" "erf" "erf_inv" "erfc" "eulertoquaternion" "eval_bsdf" "exp" "expandpointgroup" "expandprimgroup" "fastshadow" "filamentsample"
                        "file_eof" "file_flush" "file_open" "file_read" "file_readline" "file_readlines" "file_seek" "file_size" "file_stat" "file_tell" "file_write" "file_writeline" "file_writelines" "filtershadow" "filterstep"
                        "find" "findattribval" "findattribvalcount" "finput" "fit" "fit01" "fit10" "fit11" "floor" "flownoise" "flowpnoise" "forpoints" "foreach" "frac" "fresnel" "fromNDC"
                        "frontface" "gather" "geoself" "getattribute" "getbbox" "getblurP" "getbounces" "getbounds" "getcomp" "getcomponents" "getfogname" "getglobalraylevel" "getlight" "getlightid" "getlightname"
                        "getlights" "getlightscope" "getmaterial" "getobjectname" "getobjectname" "getpointbbox" "getprimid" "getptextureid" "getraylevel" "getrayweight" "getscope" "getspace" "gradient" "gradient3d"
                        "hair" "hasdetailattrib" "haslight" "hasplane" "haspointattrib" "hasprimattrib" "hasvertexattrib" "hedge_dstpoint" "hedge_dstvertex" "hedge_equivcount" "hedge_isequiv" "hedge_isprimary"
                        "hedge_isvalid" "hedge_next" "hedge_nextequiv" "hedge_postdstpoint" "hedge_postdstvertex" "hedge_presrcpoint" "hedge_presrcvertex" "hedge_prev" "hedge_prim" "hedge_primary" "hedge_srcpoint"
                        "hedge_srcvertex" "hedge_srcvertex" "hscript_noise" "hscript_rand" "hscript_snoise" "hscript_sturb" "hscript_turb" "hsvtorgb" "iaspect" "ichname" "ident" "iend" "iendtime" "ihasplane"
                        "illuminance" "import" "importance_light" "ingroup" "inpointgroup" "inprimgroup" "insert" "instance" "integrate3d" "integrate3dClip" "interpolate" "intersect" "intersect3d" "intersect_all"
                        "intersect_lights" "intersect_lights" "invert" "iplaneindex" "iplanename" "iplanesize" "irate" "irradiance" "isalpha" "isbound" "isconnected" "isdigit" "isfinite" "isfogray" "isframes" "isnan"
                        "isotropic" "israytracing" "issamples" "issamples" "isshadowray" "istart" "istarttime" "istracing" "isuvrendering" "isvalidindex"
                        "isvarying" "itoa" "ixres" "iyres" "join" "kspline" "len" "length" "length2" "lerp" "lightid" "limit_sample_space" "limport" "lkspline" "log" "log10" "lookat" "lspline" "lstrip"
                        "luminance" "lumname" "makebasis" "maketransform" "maskname" "match" "matchvex_blinn" "matchvex_specular" "mattrib" "max" "mdensity" "metaimport" "metamarch" "metanext" "metastart" "metaweight"
                        "min" "minpos" "mspace" "nbouncetypes" "nearpoint" "nearpoints" "neighbour" "neighbourcount" "neighbours" "newgroup" "newsampler" "nextsample" "ninput" "noise" "noised" "normal_bsdf" "normalize"
                        "normalname" "npoints" "npointsgroup" "nprimitives" "nprimitivesgroup" "nrandom" "ntransform" "nuniqueval" "occlusion" "onoise" "opend" "opstart" "optransform" "ord" "osd_facecount"
                        "osd_firstpatch" "osd_limitsurface" "osd_limitsurfacevertex" "osd_patchcount" "osd_patches" "outerproduct" "ow_nspace" "ow_space" "ow_vspace" "pack_inttosafefloat" "pathtrace"
                        "pcclose" "pcconvex" "pcexport" "pcfarthest" "pcfilter" "pcfind" "pcfind_radius" "pcgenerate" "pcimport" "pcimportbyidx3" "pcimportbyidx4" "pcimportbyidxf" "pcimportbyidxi"
                        "pcimportbyidxp" "pcimportbyidxs" "pcimportbyidxv" "pciterate" "pcnumfound" "pcopen" "pcopenlod" "pcsampleleaf" "pcsize" "pcunshaded" "pcwrite" "phong" "phongBRDF" "phonglobe" "planeindex"
                        "planename" "planesize" "pluralize" "pnoise" "point" "pointattrib" "pointattribsize" "pointattribtype" "pointattribtypeinfo" "pointedge" "pointhedge" "pointhedgenext" "pointname" "pointprims"
                        "pointprims" "pointvertices" "polardecomp" "pop" "pow" "prim" "prim_attribute" "prim_normal" "primattrib" "primattribsize" "primattribtype" "primattribtypeinfo" "primhedge" "primintrinsic"
                        "primpoint" "primpoints" "primuv" "primvertex" "primvertexcount" "primvertices" "printf" "ptexture" "ptlined" "ptransform" "push" "qconvert" "qdistance"
                        "qinvert" "qmultiply" "qrotate" "quaternion" "radians" "rand" "random" "random_fhash" "random_ihash" "random_shash" "random_sobol" "rawbumpmap" "rawbumpmapA" "rawbumpmapB" "rawbumpmapG"
                        "rawbumpmapG" "rawbumpmapL" "rawbumpmapY" "rawcolormap" "rayhittest" "rayimport" "re_find" "re_findall" "re_match" "re_replace" "re_split" "reflect" "reflectlight" "refract" "refractlight"
                        "relbbox" "relpointbbox" "removegroup" "removeindex" "removeindex" "removeprim" "removevalue" "removepoint" "renderstate" "reorder" "resize" "resolvemissedray" "reverse"
                        "rgbtohsv" "rgbtoxyz" "rint" "rotate" "rotate_x_to" "rstrip" "sample_bsdf" "sample_cauchy" "sample_circle_arc" "sample_circle_edge_uniform" "sample_circle_slice" "sample_circle_uniform"
                        "sample_direction_cone" "sample_direction_uniform" "sample_discrete"
                        "sample_exponential" "sample_geometry" "sample_hemisphere" "sample_hypersphere_cone" "sample_hypersphere_uniform" "sample_light" "sample_lognormal" "sample_lognormal_by_median"
                        "sample_normal" "sample_orientation_cone" "	sample_orientation_uniform" "sample_photon"
                        "sample_sphere_cone" "sample_sphere_uniform" "sampledisk" "scale" "select" "sensor_panorama_create" "sensor_panorama_getcolor" "sensor_panorama_getcone" "sensor_panorama_getdepth"
                        "sensor_save" "serialize" "set" "setagentclipnames" "setagentclipweights" "setagentcollisionlayer" "setagentworldtransform" "setagentlocaltransforms" "setagentworldtransforms"
                        "setattrib" "setattribtypeinfo" "setcomp" "setcurrentlight" "setdetailattrib" "setpointattrib" "setpointgroup" "setprimattrib" "setprimgroup"
                        "setprimintrinsic" "setprimvertex" "setvertexattrib" "shadow" "shadow_light" "shadowmap" "shimport" "shl" "shr" "shrz" "sign" "simport" "sin" "sinh" "sleep" "slerp" "slice" "smooth"
                        "snoise" "solvecubic" "solvepoly" "solvequadratic" "sort" "specular" "specularBRDF" "spline" "split" "sqrt" "sprintf" "startswith" "storelightexport" "strip" "strlen" "switch"
                        "swizzle" "tan" "tanh" "tet_adjacent" "tet_faceindex" "teximport" "texture" "texture3d" "texture3dBox" "titlecase" "toNDC" "tolower" "toupper" "trace" "translate"
                        "translucent" "transpose" "trunc" "tw_nspace" "tw_space" "tw_vspace" "uniqueval" "unpack_intfromsafefloat" "unserialize" "upush" "variadicarguments" "variance" "velocityname"
                        "vertex" "vertexattrib" "vertexattribsize" "vertexattribtype" "vertexattribtypeinfo" "vertexhedge" "vertexindex" "vertexnext"
                        "vertexpoint" "vertexpoint" "vertexprim" "vertexprimindex" "vnoise" "volume" "volumegradient" "volumeindex" "volumeindexorigin" "volumeindextopos" "volumeindexv" "volumepostoindex"
                        "volumeres" "volumesample" "volumesamplev" "vtransform" "wireblinn" "wirediffuse" "wnoise" "wo_nspace" "wo_space"
                        "wo_space" "writepixel" "wt_nspace" "wt_space" "wt_vspace" "xnoise" "xnoised" "xyzdist" "xyztorgb" 
                      
                       ))



(defvar gearslogy-vex-mode-hook nil)
;;put to list 
(defun my:push-c++-keys(list-names)
  (push list-names vex-keywords))

(setq vex-c-list-types c-font-lock-extra-types)
(setq vex-c-list-keywords c-font-lock-keywords) ;; do not support
(setq vex-c++-list-keywords c++-font-lock-keywords)
(setq vex-c++-list-types c++-font-lock-extra-types) ;;dot not support 



(mapcar 'my:push-c++-keys vex-c-list-types)
(mapcar 'my:push-c++-keys vex-c++-list-types)



;; generate regex string for each category of keywords
(setq vex-keywords-regexp (regexp-opt vex-keywords 'words))
(setq vex-type-regexp (regexp-opt vex-types 'words))
(setq vex-constant-regexp (regexp-opt vex-constants 'words))
(setq vex-event-regexp (regexp-opt vex-events 'words))
(setq vex-functions-regexp (regexp-opt vex-functions 'words))



;; create the list for font-lock.
;; each category of keyword is given a particular face
(setq vex-font-lock-keywords
      `(
        (,vex-type-regexp . font-lock-type-face)
        (,vex-constant-regexp . font-lock-constant-face)
        (,vex-event-regexp . font-lock-builtin-face)
        (,vex-functions-regexp . font-lock-function-name-face)
        (,vex-keywords-regexp . font-lock-keyword-face)
        
        ;; note: order above matters, because once colored, that part won't change.
        ;; in general, longer words first
        ))

;;;###autoload

(define-derived-mode gearslogy-vex-mode c++-mode
  "gearslogy-vex-mode"
  "Major mode for editing houdini vex …"
  (setq mode-name "gearslogy-vex-mode")
  
  ;; code for syntax highlighting
  (setq font-lock-defaults '((vex-font-lock-keywords))))

(run-hooks 'gearslogy-vex-mode-hook)



(setq copy_vex_temp vex-functions)
(require 'auto-complete)
(add-to-list 'ac-modes 'gearslogy-vex-mode)

(defun my:ac-vex-mode-init()
  (defun mysource1-candidates ()
    copy_vex_temp)
  (defvar ac-source-mysource1
    '((candidates . mysource1-candidates)))
  (setq ac-sources (append '(ac-source-mysource1) ac-sources)))
  ;(add-hook 'fundamental-mode (lambda () (add-to-list 'ac-sources 'ac-source-mysource1))))


(add-hook 'c++-mode-hook 'my:ac-vex-mode-init)

;(add-hook 'fundamental-mode 'my:ac-vex-mode-init)  


;; clear memory. no longer needed
;(setq vex-keywords nil)
(setq vex-types nil)
(setq vex-constants nil)
(setq vex-events nil)
(setq vex-functions nil)

;; clear memory. no longer needed
(setq vex-keywords-regexp nil)
(setq vex-types-regexp nil)
(setq vex-constants-regexp nil)
(setq vex-events-regexp nil)
(setq vex-functions-regexp nil)


(add-to-list 'auto-mode-alist '("\\.vex$" . gearslogy-vex-mode))

;; add the mode to the `features' list


(setq major-mode 'gearslogy-vex-mode)
(provide 'gearslogy-vex-mode)

;; Local Variables:
;; coding: utf-8
;; End:

;;; gearslogy-vex-mode.el ends here
