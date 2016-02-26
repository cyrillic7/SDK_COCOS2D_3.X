.class Lcom/duoku/platform/util/i$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/widget/BaseAdapter;

.field c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/duoku/platform/util/i;


# direct methods
.method constructor <init>(Lcom/duoku/platform/util/i;)V
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/duoku/platform/util/i$a;->d:Lcom/duoku/platform/util/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 216
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/duoku/platform/util/i$a;->a:Ljava/lang/String;

    .line 217
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/BaseAdapter;

    iput-object v0, p0, Lcom/duoku/platform/util/i$a;->b:Landroid/widget/BaseAdapter;

    .line 218
    iget-object v0, p0, Lcom/duoku/platform/util/i$a;->d:Lcom/duoku/platform/util/i;

    iget-object v1, p0, Lcom/duoku/platform/util/i$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/i;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 219
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/util/i$a;->c:Landroid/widget/ImageView;

    .line 220
    return-object v1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 225
    if-nez p1, :cond_3

    .line 233
    :cond_2
    :goto_2
    return-void

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/util/i$a;->d:Lcom/duoku/platform/util/i;

    iget-object v1, p0, Lcom/duoku/platform/util/i$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 230
    iget-object v0, p0, Lcom/duoku/platform/util/i$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/duoku/platform/util/i$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/duoku/platform/util/i$a;->c:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/util/i$a;->a([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/util/i$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
