.class public Lcom/duoku/platform/view/StartView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/StartView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout$LayoutParams;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/duoku/platform/view/LoadingBar;

.field private h:Landroid/content/Context;

.field private final i:I

.field private final j:I

.field private k:I

.field private l:I

.field private m:Lcom/duoku/platform/view/StartView$a;

.field private n:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Bitmap;

.field private q:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/16 v0, 0x136

    iput v0, p0, Lcom/duoku/platform/view/StartView;->i:I

    .line 70
    const/16 v0, 0x96

    iput v0, p0, Lcom/duoku/platform/view/StartView;->j:I

    .line 108
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/StartView;->a(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/16 v0, 0x136

    iput v0, p0, Lcom/duoku/platform/view/StartView;->i:I

    .line 70
    const/16 v0, 0x96

    iput v0, p0, Lcom/duoku/platform/view/StartView;->j:I

    .line 99
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/StartView;->a(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/StartView;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 118
    iput-object p1, p0, Lcom/duoku/platform/view/StartView;->h:Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->d()V

    .line 121
    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->h:Landroid/content/Context;

    const-string v2, "dk_splash_bg"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->p:Landroid/graphics/Bitmap;

    .line 122
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->p:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/StartView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->e()V

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/StartView;Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/duoku/platform/view/StartView;->o:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/StartView;)Lcom/duoku/platform/view/LoadingBar;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->g:Lcom/duoku/platform/view/LoadingBar;

    return-object v0
.end method

.method static synthetic c(Lcom/duoku/platform/view/StartView;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/view/StartView;)I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/duoku/platform/view/StartView;->k:I

    return v0
.end method

.method private d()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v4, -0x2

    const/16 v3, 0x51

    .line 159
    invoke-virtual {p0, v5}, Lcom/duoku/platform/view/StartView;->setOrientation(I)V

    .line 160
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 161
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 162
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->f()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->a:Landroid/widget/LinearLayout;

    .line 163
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->f()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->b:Landroid/widget/LinearLayout;

    .line 164
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->f()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->c:Landroid/widget/LinearLayout;

    .line 165
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->f()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    .line 167
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/view/StartView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/view/StartView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 170
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 172
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 175
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 177
    new-instance v0, Lcom/duoku/platform/view/LoadingBar;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/duoku/platform/view/LoadingBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->g:Lcom/duoku/platform/view/LoadingBar;

    .line 178
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->f:Landroid/widget/ImageView;

    .line 180
    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x136

    invoke-static {v0, v1}, Lcom/duoku/platform/util/n;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/StartView;->k:I

    .line 181
    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v0, v1}, Lcom/duoku/platform/util/n;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/StartView;->l:I

    .line 183
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/StartView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/view/StartView;)I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/duoku/platform/view/StartView;->l:I

    return v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 193
    new-instance v0, Lcom/duoku/platform/view/StartView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/view/StartView$a;-><init>(Lcom/duoku/platform/view/StartView;Lcom/duoku/platform/view/StartView$a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->m:Lcom/duoku/platform/view/StartView$a;

    .line 194
    new-instance v0, Lcom/duoku/platform/view/StartView$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/StartView$1;-><init>(Lcom/duoku/platform/view/StartView;)V

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->n:Landroid/os/AsyncTask;

    .line 342
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->n:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 343
    return-void
.end method

.method static synthetic f(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 351
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 352
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 353
    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/StartView;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->h:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->g:Lcom/duoku/platform/view/LoadingBar;

    invoke-virtual {v0}, Lcom/duoku/platform/view/LoadingBar;->c()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 363
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->m:Lcom/duoku/platform/view/StartView$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/StartView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 364
    :cond_1a
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->g:Lcom/duoku/platform/view/LoadingBar;

    invoke-virtual {v0}, Lcom/duoku/platform/view/LoadingBar;->a()V

    .line 365
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    .line 448
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 451
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 453
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 455
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 456
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_25

    move-result-wide v2

    .line 458
    cmp-long v4, v0, v4

    if-ltz v4, :cond_29

    cmp-long v0, v0, v2

    if-gtz v0, :cond_29

    .line 460
    const/4 v0, 0x1

    .line 468
    :goto_24
    return v0

    .line 464
    :catch_25
    move-exception v0

    .line 466
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    :cond_29
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public b()V
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ltz v0, :cond_12

    .line 383
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->m:Lcom/duoku/platform/view/StartView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/StartView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 384
    :cond_12
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->g:Lcom/duoku/platform/view/LoadingBar;

    invoke-virtual {v0}, Lcom/duoku/platform/view/LoadingBar;->b()V

    .line 385
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 394
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->n:Landroid/os/AsyncTask;

    if-eqz v0, :cond_d

    .line 135
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->n:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->n:Landroid/os/AsyncTask;

    .line 138
    :cond_d
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    .line 140
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    :cond_16
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    .line 144
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    :cond_1f
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    .line 148
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    :cond_28
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 151
    return-void
.end method
