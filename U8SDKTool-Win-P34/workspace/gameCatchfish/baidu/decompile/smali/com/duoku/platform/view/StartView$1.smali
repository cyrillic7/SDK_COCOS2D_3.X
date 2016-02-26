.class Lcom/duoku/platform/view/StartView$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/StartView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/StartView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/StartView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    .line 194
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 224
    sget-object v0, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/util/q;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 228
    if-eqz v0, :cond_ff

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ff

    .line 230
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_ca

    .line 232
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/bean/d;

    .line 233
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    .line 234
    iget-object v3, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v1}, Lcom/duoku/platform/bean/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/duoku/platform/bean/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/duoku/platform/view/StartView;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    iget-object v3, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/duoku/platform/view/StartView;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 237
    invoke-virtual {v1}, Lcom/duoku/platform/bean/d;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->a()I

    move-result v4

    if-ge v3, v4, :cond_6f

    .line 239
    invoke-virtual {v1}, Lcom/duoku/platform/bean/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_56
    if-eqz v0, :cond_66

    .line 248
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 249
    if-eq v1, v6, :cond_66

    .line 251
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_66
    sget-object v1, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    :goto_6c
    if-eqz v0, :cond_fc

    .line 311
    :goto_6e
    return-object v0

    .line 243
    :cond_6f
    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 256
    :cond_74
    iget-object v3, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v1}, Lcom/duoku/platform/bean/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/duoku/platform/bean/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/duoku/platform/view/StartView;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 258
    invoke-virtual {v1}, Lcom/duoku/platform/bean/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_98

    .line 262
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 263
    if-eq v1, v6, :cond_98

    .line 265
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_98
    sget-object v1, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6c

    .line 270
    :cond_9f
    iget-object v1, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/duoku/platform/view/StartView;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 272
    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_c3

    .line 276
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 277
    if-eq v1, v6, :cond_c3

    .line 279
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_c3
    sget-object v1, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6c

    .line 288
    :cond_ca
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    .line 289
    iget-object v1, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/duoku/platform/view/StartView;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 291
    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_f4

    .line 295
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 296
    if-eq v1, v6, :cond_f4

    .line 298
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_f4
    sget-object v1, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_6c

    :cond_fc
    move-object v0, v2

    .line 311
    goto/16 :goto_6e

    :cond_ff
    move-object v0, v2

    goto/16 :goto_6c
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 317
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/view/StartView;->a(Lcom/duoku/platform/view/StartView;Landroid/graphics/Bitmap;)V

    .line 318
    if-eqz p1, :cond_74

    .line 320
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0, p1}, Lcom/duoku/platform/view/StartView;->a(Lcom/duoku/platform/view/StartView;Landroid/graphics/Bitmap;)V

    .line 321
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->c(Lcom/duoku/platform/view/StartView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v1}, Lcom/duoku/platform/view/StartView;->d(Lcom/duoku/platform/view/StartView;)I

    move-result v1

    if-gt v0, v1, :cond_32

    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->c(Lcom/duoku/platform/view/StartView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v1}, Lcom/duoku/platform/view/StartView;->e(Lcom/duoku/platform/view/StartView;)I

    move-result v1

    if-le v0, v1, :cond_64

    .line 323
    :cond_32
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->f(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 324
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->f(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v1}, Lcom/duoku/platform/view/StartView;->e(Lcom/duoku/platform/view/StartView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 325
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->f(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v1}, Lcom/duoku/platform/view/StartView;->d(Lcom/duoku/platform/view/StartView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 326
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->f(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 328
    :cond_64
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->f(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v1}, Lcom/duoku/platform/view/StartView;->c(Lcom/duoku/platform/view/StartView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 338
    :goto_73
    return-void

    .line 332
    :cond_74
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->f(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 333
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->f(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v1}, Lcom/duoku/platform/view/StartView;->e(Lcom/duoku/platform/view/StartView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 334
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->f(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v1}, Lcom/duoku/platform/view/StartView;->d(Lcom/duoku/platform/view/StartView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 335
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->f(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 336
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->f(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/StartView$1;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v1}, Lcom/duoku/platform/view/StartView;->g(Lcom/duoku/platform/view/StartView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_splash_logo"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_73
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/view/StartView$1;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/view/StartView$1;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
