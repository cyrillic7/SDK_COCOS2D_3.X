.class public Lcom/qbao/sdk/ui/BaseView;
.super Landroid/widget/LinearLayout;
.source "BaseView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected ej:Landroid/os/Bundle;

.field protected ek:Lcom/qbao/sdk/ui/a;

.field protected el:Z

.field protected em:Landroid/app/Dialog;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v0, "BaseView"

    iput-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->TAG:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->ek:Lcom/qbao/sdk/ui/a;

    if-eqz v0, :cond_14

    .line 68
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->ek:Lcom/qbao/sdk/ui/a;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/a;->aC()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_14
    iput-object p1, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/qbao/sdk/ui/BaseView;->aE()V

    .line 72
    invoke-static {}, Lcom/qbao/sdk/e/g;->init()V

    .line 73
    return-void
.end method

.method private aE()V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lcom/qbao/sdk/ui/BaseView;->el:Z

    .line 77
    sget v0, Lcom/qbao/sdk/e/g;->aD:I

    sget v1, Lcom/qbao/sdk/e/g;->aC:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 78
    sget v1, Lcom/qbao/sdk/e/g;->aD:I

    sget v2, Lcom/qbao/sdk/e/g;->aC:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 79
    iget-boolean v2, p0, Lcom/qbao/sdk/ui/BaseView;->el:Z

    if-eqz v2, :cond_4f

    .line 80
    sput v0, Lcom/qbao/sdk/e/g;->aD:I

    .line 81
    sput v1, Lcom/qbao/sdk/e/g;->aC:I

    .line 86
    :goto_2a
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SCREEN_HEIGHT="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/qbao/sdk/e/g;->aD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SCREEN_WIDTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qbao/sdk/e/g;->aC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 76
    :cond_4d
    const/4 v0, 0x0

    goto :goto_10

    .line 83
    :cond_4f
    sput v1, Lcom/qbao/sdk/e/g;->aD:I

    .line 84
    sput v0, Lcom/qbao/sdk/e/g;->aC:I

    goto :goto_2a
.end method


# virtual methods
.method protected O(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 725
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected a(Ljava/lang/String;IIFIIII)Landroid/widget/Button;
    .registers 19

    .prologue
    .line 197
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/qbao/sdk/ui/BaseView;->a(ZLjava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;FIIILandroid/view/View$OnClickListener;)Landroid/widget/Button;
    .registers 22

    .prologue
    .line 305
    const/4 v7, 0x1

    .line 306
    iget-boolean v1, p0, Lcom/qbao/sdk/ui/BaseView;->el:Z

    if-eqz v1, :cond_4b

    sget v1, Lcom/qbao/sdk/e/g;->aD:I

    :goto_7
    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v11, v1

    .line 307
    invoke-virtual {p0, p1}, Lcom/qbao/sdk/ui/BaseView;->O(Ljava/lang/String;)I

    move-result v12

    .line 308
    const/4 v2, 0x0

    sget v5, Lcom/qbao/sdk/e/g;->io:I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/qbao/sdk/ui/BaseView;->b(ZLjava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v1

    .line 309
    if-eqz p3, :cond_45

    .line 310
    sub-int v2, v11, v12

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 311
    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 314
    :cond_45
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-object v1

    .line 306
    :cond_4b
    sget v1, Lcom/qbao/sdk/e/g;->aC:I

    goto :goto_7
.end method

.method protected a(ZLjava/lang/String;IIFIIII)Landroid/widget/Button;
    .registers 19

    .prologue
    .line 222
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;ZLjava/lang/String;IIFIII)Landroid/widget/Button;

    move-result-object v2

    .line 224
    const/high16 v0, 0x3f800000

    cmpg-float v0, p5, v0

    if-gez v0, :cond_4b

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_4b

    .line 225
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/BaseView;->el:Z

    if-eqz v0, :cond_48

    sget v0, Lcom/qbao/sdk/e/g;->aD:I

    :goto_21
    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    .line 231
    :goto_24
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    sget v0, Lcom/qbao/sdk/e/g;->hU:I

    sget v1, Lcom/qbao/sdk/e/g;->hU:I

    sget v3, Lcom/qbao/sdk/e/g;->hU:I

    sget v4, Lcom/qbao/sdk/e/g;->hU:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 235
    new-instance v0, Lcom/qbao/sdk/ui/BaseView$1;

    move-object v1, p0

    move/from16 v3, p9

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/qbao/sdk/ui/BaseView$1;-><init>(Lcom/qbao/sdk/ui/BaseView;Landroid/widget/Button;III)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    return-object v2

    .line 225
    :cond_48
    sget v0, Lcom/qbao/sdk/e/g;->aC:I

    goto :goto_21

    .line 226
    :cond_4b
    const/high16 v0, 0x3f800000

    cmpl-float v0, p5, v0

    if-ltz v0, :cond_53

    .line 227
    const/4 v0, -0x1

    .line 228
    goto :goto_24

    .line 229
    :cond_53
    const/4 v0, -0x2

    goto :goto_24
.end method

.method protected a(Ljava/lang/String;FII)Landroid/widget/EditText;
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x2

    const/high16 v4, 0x3f800000

    .line 361
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    sget v2, Lcom/qbao/sdk/e/g;->hz:I

    sget v3, Lcom/qbao/sdk/e/g;->hA:I

    invoke-static {v5, v2, v3}, Lcom/qbao/core/d/b;->a(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-static {v0, p1, p2, p3, v2}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;Ljava/lang/String;FILandroid/graphics/drawable/Drawable;)Landroid/widget/EditText;

    move-result-object v2

    .line 363
    cmpg-float v0, p2, v4

    if-gez v0, :cond_4b

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4b

    .line 364
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/BaseView;->el:Z

    if-eqz v0, :cond_48

    sget v0, Lcom/qbao/sdk/e/g;->aD:I

    :goto_21
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 370
    :goto_24
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 371
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    sget v0, Lcom/qbao/sdk/e/g;->hE:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 373
    sget v0, Lcom/qbao/sdk/e/g;->hD:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 374
    sget v0, Lcom/qbao/sdk/e/g;->im:I

    int-to-float v0, v0

    invoke-virtual {v2, v5, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 375
    sget v0, Lcom/qbao/sdk/e/g;->hX:I

    sget v1, Lcom/qbao/sdk/e/g;->hX:I

    sget v3, Lcom/qbao/sdk/e/g;->hX:I

    sget v4, Lcom/qbao/sdk/e/g;->hX:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 376
    return-object v2

    .line 364
    :cond_48
    sget v0, Lcom/qbao/sdk/e/g;->aC:I

    goto :goto_21

    .line 365
    :cond_4b
    cmpl-float v0, p2, v4

    if-ltz v0, :cond_51

    .line 366
    const/4 v0, -0x1

    .line 367
    goto :goto_24

    :cond_51
    move v0, v1

    .line 368
    goto :goto_24
.end method

.method protected a(Ljava/lang/String;FIIZ)Landroid/widget/EditText;
    .registers 11

    .prologue
    const/4 v1, -0x2

    const/high16 v4, 0x3f800000

    .line 328
    if-eqz p5, :cond_a

    .line 329
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qbao/sdk/ui/BaseView;->a(Ljava/lang/String;FII)Landroid/widget/EditText;

    move-result-object v0

    .line 348
    :goto_9
    return-object v0

    .line 331
    :cond_a
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, p1, p2, p3, v2}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;Ljava/lang/String;FILandroid/graphics/drawable/Drawable;)Landroid/widget/EditText;

    move-result-object v2

    .line 334
    cmpg-float v0, p2, v4

    if-gez v0, :cond_51

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_51

    .line 335
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/BaseView;->el:Z

    if-eqz v0, :cond_4e

    sget v0, Lcom/qbao/sdk/e/g;->aD:I

    :goto_25
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 341
    :goto_28
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 342
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    sget v0, Lcom/qbao/sdk/e/g;->hE:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 344
    sget v0, Lcom/qbao/sdk/e/g;->hD:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 345
    const/4 v0, 0x1

    sget v1, Lcom/qbao/sdk/e/g;->im:I

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 346
    sget v0, Lcom/qbao/sdk/e/g;->hX:I

    sget v1, Lcom/qbao/sdk/e/g;->hX:I

    sget v3, Lcom/qbao/sdk/e/g;->hX:I

    sget v4, Lcom/qbao/sdk/e/g;->hX:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    move-object v0, v2

    .line 348
    goto :goto_9

    .line 335
    :cond_4e
    sget v0, Lcom/qbao/sdk/e/g;->aC:I

    goto :goto_25

    .line 336
    :cond_51
    cmpl-float v0, p2, v4

    if-ltz v0, :cond_57

    .line 337
    const/4 v0, -0x1

    .line 338
    goto :goto_28

    :cond_57
    move v0, v1

    .line 339
    goto :goto_28
.end method

.method protected a(Ljava/lang/String;Z)Landroid/widget/ImageView;
    .registers 6

    .prologue
    .line 649
    invoke-virtual {p0, p1}, Lcom/qbao/sdk/ui/BaseView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 650
    if-eqz v1, :cond_11

    .line 651
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 652
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    :goto_10
    return-object v0

    .line 656
    :cond_11
    if-nez p2, :cond_1b

    .line 657
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto :goto_10

    .line 661
    :cond_1b
    :try_start_1b
    invoke-static {p1}, Lcom/qbao/sdk/e/d;->al(Ljava/lang/String;)Lcom/qbao/sdk/e/d;

    move-result-object v1

    .line 662
    if-eqz v1, :cond_34

    .line 663
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 664
    invoke-virtual {v1}, Lcom/qbao/sdk/e/d;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2f} :catch_30

    goto :goto_10

    .line 667
    :catch_30
    move-exception v0

    .line 668
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 670
    :cond_34
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto :goto_10
.end method

.method protected a(Landroid/widget/EditText;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 411
    const/16 v0, 0x10

    invoke-virtual {p0, v3, v8, v0, v3}, Lcom/qbao/sdk/ui/BaseView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x3fe8000000000000L

    iget-boolean v1, p0, Lcom/qbao/sdk/ui/BaseView;->el:Z

    if-eqz v1, :cond_3f

    sget v1, Lcom/qbao/sdk/e/g;->aD:I

    :goto_16
    int-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 413
    sget v0, Lcom/qbao/sdk/e/g;->hz:I

    sget v1, Lcom/qbao/sdk/e/g;->hA:I

    invoke-static {v8, v0, v1}, Lcom/qbao/core/d/b;->a(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    const/4 v0, 0x3

    invoke-virtual {p0, v3, v8, v0, v3}, Lcom/qbao/sdk/ui/BaseView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 417
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    return-object v2

    .line 412
    :cond_3f
    sget v1, Lcom/qbao/sdk/e/g;->aC:I

    goto :goto_16
.end method

.method protected a(Landroid/widget/EditText;Landroid/widget/TextView;)Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 391
    const/16 v0, 0x10

    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/qbao/sdk/ui/BaseView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 392
    const/4 v0, 0x1

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    sget v3, Lcom/qbao/sdk/e/g;->hB:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/qbao/sdk/ui/BaseView;->b(III)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/BaseView;->el:Z

    if-eqz v0, :cond_35

    sget v0, Lcom/qbao/sdk/e/g;->hU:I

    :goto_19
    invoke-virtual {p0, v4, v4, v0}, Lcom/qbao/sdk/ui/BaseView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 394
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/BaseView;->el:Z

    if-eqz v0, :cond_38

    sget v0, Lcom/qbao/sdk/e/g;->hU:I

    :goto_29
    invoke-virtual {p0, v4, v4, v0}, Lcom/qbao/sdk/ui/BaseView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    invoke-virtual {p0, p1, v1}, Lcom/qbao/sdk/ui/BaseView;->a(Landroid/widget/EditText;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 398
    return-object v0

    .line 393
    :cond_35
    sget v0, Lcom/qbao/sdk/e/g;->hX:I

    goto :goto_19

    .line 395
    :cond_38
    sget v0, Lcom/qbao/sdk/e/g;->hX:I

    goto :goto_29
.end method

.method protected varargs a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 175
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected a(ZII)Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    .line 491
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected a(ZZII)Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 158
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;ZZII)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;
    .registers 16

    .prologue
    .line 526
    const-string v0, "qb_title_logo"

    sget v1, Lcom/qbao/sdk/e/g;->ih:I

    sget v2, Lcom/qbao/sdk/e/g;->ii:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/BaseView;->b(Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object v2

    .line 527
    const-string v0, "qb_title_back"

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/BaseView;->ac(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    .line 528
    const-string v1, "qb_title_close"

    invoke-virtual {p0, v1}, Lcom/qbao/sdk/ui/BaseView;->ac(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v3

    .line 530
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 531
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    sget v6, Lcom/qbao/sdk/e/g;->ij:I

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    sget v1, Lcom/qbao/sdk/e/g;->ic:I

    const/4 v5, 0x0

    sget v6, Lcom/qbao/sdk/e/g;->ic:I

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 533
    const/16 v1, 0x10

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 535
    if-eqz p2, :cond_7b

    .line 536
    const-string v1, "\u8fd4\u56de"

    sget v5, Lcom/qbao/sdk/e/g;->hC:I

    sget v6, Lcom/qbao/sdk/e/g;->im:I

    invoke-virtual {p0, v1, v5, v6}, Lcom/qbao/sdk/ui/BaseView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 537
    sget-object v5, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    const/4 v6, 0x0

    sget v7, Lcom/qbao/sdk/e/g;->aJ:I

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/view/View;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/qbao/sdk/ui/BaseView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 538
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 539
    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 540
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 543
    new-instance v6, Lcom/qbao/sdk/ui/BaseView$3;

    invoke-direct {v6, p0}, Lcom/qbao/sdk/ui/BaseView$3;-><init>(Lcom/qbao/sdk/ui/BaseView;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    new-instance v6, Lcom/qbao/sdk/ui/BaseView$4;

    invoke-direct {v6, p0, v0, v1}, Lcom/qbao/sdk/ui/BaseView$4;-><init>(Lcom/qbao/sdk/ui/BaseView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 564
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 567
    :cond_7b
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 569
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 570
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 571
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    const/4 v0, 0x1

    sget v1, Lcom/qbao/sdk/e/g;->ib:I

    sget v6, Lcom/qbao/sdk/e/g;->hB:I

    invoke-virtual {p0, v0, v1, v6}, Lcom/qbao/sdk/ui/BaseView;->b(III)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 575
    if-eqz p3, :cond_114

    sget v0, Lcom/qbao/sdk/e/g;->hy:I

    move v1, v0

    :goto_9f
    if-eqz p3, :cond_118

    sget v0, Lcom/qbao/sdk/e/g;->in:I

    :goto_a3
    invoke-virtual {p0, p1, v1, v0}, Lcom/qbao/sdk/ui/BaseView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 576
    if-eqz p3, :cond_11b

    .line 577
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 578
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 579
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 580
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 581
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 582
    const/16 v7, 0xf

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 583
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    const/4 v2, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/qbao/sdk/e/g;->hS:I

    invoke-virtual {p0, v2, v7, v8}, Lcom/qbao/sdk/ui/BaseView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 585
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 586
    const/4 v2, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/qbao/sdk/e/g;->hS:I

    invoke-virtual {p0, v2, v6, v7}, Lcom/qbao/sdk/ui/BaseView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 587
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 593
    :goto_ea
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 594
    if-eqz p4, :cond_113

    if-eqz p5, :cond_113

    .line 595
    invoke-virtual {v3, p5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    new-instance v0, Lcom/qbao/sdk/ui/BaseView$5;

    invoke-direct {v0, p0, v3}, Lcom/qbao/sdk/ui/BaseView$5;-><init>(Lcom/qbao/sdk/ui/BaseView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 608
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 609
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 610
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 611
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 614
    :cond_113
    return-object v4

    .line 575
    :cond_114
    sget v0, Lcom/qbao/sdk/e/g;->hD:I

    move v1, v0

    goto :goto_9f

    :cond_118
    sget v0, Lcom/qbao/sdk/e/g;->ip:I

    goto :goto_a3

    .line 590
    :cond_11b
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_ea
.end method

.method protected a(Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 5

    .prologue
    .line 442
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/qbao/sdk/ui/BaseView;->a(Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;III)Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 431
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;IIILandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .registers 12

    .prologue
    .line 459
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;Ljava/lang/String;IIILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a(Ljava/lang/String;II[Lcom/qbao/core/d/c;)Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 476
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;Ljava/lang/String;II[Lcom/qbao/core/d/c;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/app/Dialog;)V
    .registers 5

    .prologue
    .line 782
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 783
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 784
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_21

    .line 785
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 790
    :goto_20
    return-void

    .line 787
    :cond_21
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 788
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_20
.end method

.method protected aA()Landroid/widget/RelativeLayout;
    .registers 3

    .prologue
    .line 133
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected aB()Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 141
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected aF()V
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/BaseView;->el:Z

    if-eqz v0, :cond_8

    .line 91
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/BaseView;->aG()V

    .line 95
    :goto_7
    return-void

    .line 93
    :cond_8
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/BaseView;->aH()V

    goto :goto_7
.end method

.method protected aG()V
    .registers 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/BaseView;->aH()V

    .line 102
    return-void
.end method

.method protected aH()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 108
    const/4 v0, 0x1

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/qbao/sdk/ui/BaseView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/BaseView;->aI()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/BaseView;->addView(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method protected aI()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 119
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/qbao/sdk/ui/BaseView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/qbao/sdk/e/g;->aC:I

    sget v3, Lcom/qbao/sdk/e/g;->aD:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x1b

    div-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 121
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/qbao/sdk/e/g;->aC:I

    sget v3, Lcom/qbao/sdk/e/g;->aD:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    div-int/lit8 v2, v2, 0x24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 122
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/BaseView;->aL()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/BaseView;->aA()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/BaseView;->aB()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    return-object v1
.end method

.method protected aJ()Landroid/graphics/drawable/GradientDrawable;
    .registers 2

    .prologue
    .line 508
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 509
    return-object v0
.end method

.method protected aK()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 618
    const/4 v0, 0x1

    const/16 v1, 0x11

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/qbao/sdk/ui/BaseView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 619
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 620
    new-instance v0, Lcom/qbao/sdk/ui/MyDashedView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    sget v3, Lcom/qbao/sdk/e/g;->hE:I

    invoke-direct {v0, v2, v3, v4}, Lcom/qbao/sdk/ui/MyDashedView;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 621
    return-object v1
.end method

.method protected aL()Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .prologue
    .line 696
    const/4 v0, 0x6

    .line 697
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 698
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 699
    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 700
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 701
    return-object v1
.end method

.method protected aM()Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .prologue
    .line 705
    const/4 v0, 0x6

    .line 706
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 707
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 708
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 709
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 710
    return-object v1
.end method

.method protected aN()Landroid/widget/ScrollView;
    .registers 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x3f800000

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;F)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method protected aO()V
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->ek:Lcom/qbao/sdk/ui/a;

    if-eqz v0, :cond_c

    .line 823
    invoke-virtual {p0, p0}, Lcom/qbao/sdk/ui/BaseView;->c(Landroid/view/View;)V

    .line 824
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->ek:Lcom/qbao/sdk/ui/a;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/a;->pop()V

    .line 826
    :cond_c
    return-void
.end method

.method protected ac(Ljava/lang/String;)Landroid/widget/ImageView;
    .registers 3

    .prologue
    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qbao/sdk/ui/BaseView;->a(Ljava/lang/String;Z)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public am()V
    .registers 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->em:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 770
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->em:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->em:Landroid/app/Dialog;

    .line 773
    :cond_c
    return-void
.end method

.method protected b(ZLjava/lang/String;IIFIIII)Landroid/widget/Button;
    .registers 16

    .prologue
    .line 272
    invoke-virtual/range {p0 .. p9}, Lcom/qbao/sdk/ui/BaseView;->a(ZLjava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v2

    .line 273
    if-eqz p1, :cond_11

    .line 274
    sget v0, Lcom/qbao/sdk/e/g;->hU:I

    sget v1, Lcom/qbao/sdk/e/g;->hT:I

    sget v3, Lcom/qbao/sdk/e/g;->hU:I

    sget v4, Lcom/qbao/sdk/e/g;->hT:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 276
    :cond_11
    new-instance v0, Lcom/qbao/sdk/ui/BaseView$2;

    move-object v1, p0

    move v3, p9

    move v4, p8

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/qbao/sdk/ui/BaseView$2;-><init>(Lcom/qbao/sdk/ui/BaseView;Landroid/widget/Button;III)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    return-object v2
.end method

.method protected b(Ljava/lang/String;II)Landroid/widget/ImageView;
    .registers 6

    .prologue
    .line 685
    invoke-virtual {p0, p1}, Lcom/qbao/sdk/ui/BaseView;->ac(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    .line 686
    if-nez v0, :cond_d

    .line 687
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 689
    :cond_d
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 690
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 692
    return-object v0
.end method

.method protected b(III)Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 500
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 501
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 502
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 504
    return-object v0
.end method

.method public b(Ljava/lang/String;Z)V
    .registers 12

    .prologue
    .line 738
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x11

    const/4 v3, 0x2

    :try_start_5
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qbao/sdk/ui/BaseView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 739
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x11

    sget v3, Lcom/qbao/sdk/e/g;->aL:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qbao/sdk/ui/BaseView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 740
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/BaseView;->aM()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 741
    const-string v1, "qb_loading"

    invoke-virtual {p0, v1}, Lcom/qbao/sdk/ui/BaseView;->ac(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v8

    .line 742
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 743
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lcom/qbao/sdk/e/g;->hU:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/qbao/sdk/ui/BaseView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 744
    const/4 v1, -0x1

    sget v2, Lcom/qbao/sdk/e/g;->im:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/qbao/sdk/ui/BaseView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 745
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 748
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 749
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 750
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 751
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 753
    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->startNow()V

    .line 755
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->em:Landroid/app/Dialog;

    .line 756
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->em:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/BaseView;->a(Landroid/app/Dialog;)V

    .line 757
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->em:Landroid/app/Dialog;

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 758
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->em:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 759
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->em:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_75} :catch_76

    .line 763
    :goto_75
    return-void

    .line 760
    :catch_76
    move-exception v0

    .line 761
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75
.end method

.method public c(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 805
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 806
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 807
    return-void
.end method

.method protected d(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 814
    invoke-virtual {p0, p0}, Lcom/qbao/sdk/ui/BaseView;->c(Landroid/view/View;)V

    .line 815
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->ek:Lcom/qbao/sdk/ui/a;

    invoke-virtual {v0, p1}, Lcom/qbao/sdk/ui/a;->a(Landroid/view/View;)V

    .line 816
    return-void
.end method

.method protected finish()V
    .registers 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->ek:Lcom/qbao/sdk/ui/a;

    if-eqz v0, :cond_9

    .line 830
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->ek:Lcom/qbao/sdk/ui/a;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/a;->dismiss()V

    .line 832
    :cond_9
    return-void
.end method

.method protected getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 625
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qbao/sdk/d/a;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_1d

    .line 627
    new-instance v1, Lcom/qbao/sdk/e/d;

    invoke-direct {v1, v0}, Lcom/qbao/sdk/e/d;-><init>(Landroid/graphics/Bitmap;)V

    .line 628
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/qbao/sdk/ui/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lcom/qbao/sdk/e/d;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 633
    :cond_1c
    :goto_1c
    return-object v0

    .line 630
    :cond_1d
    invoke-static {p1}, Lcom/qbao/core/util/k;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 631
    if-nez v0, :cond_1c

    .line 633
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public setParentObj(Lcom/qbao/sdk/ui/a;)V
    .registers 2

    .prologue
    .line 801
    iput-object p1, p0, Lcom/qbao/sdk/ui/BaseView;->ek:Lcom/qbao/sdk/ui/a;

    .line 802
    return-void
.end method
