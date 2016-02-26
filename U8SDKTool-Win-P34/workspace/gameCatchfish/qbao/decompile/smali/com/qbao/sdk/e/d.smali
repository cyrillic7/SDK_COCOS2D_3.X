.class public Lcom/qbao/sdk/e/d;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field public static af:Landroid/content/Context;


# instance fields
.field private gk:Landroid/graphics/Bitmap;

.field private gl:I

.field private gm:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/qbao/sdk/e/d;->af:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/qbao/sdk/e/d;->a(Landroid/graphics/Bitmap;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/qbao/sdk/e/d;->a(Landroid/graphics/Bitmap;Z)V

    .line 76
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Z)V
    .registers 6

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 81
    int-to-float v0, v0

    sget v2, Lcom/qbao/core/d/d;->aB:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 82
    int-to-float v1, v1

    sget v2, Lcom/qbao/core/d/d;->aB:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 83
    if-lez v1, :cond_18

    if-lez v0, :cond_18

    if-nez p2, :cond_1b

    .line 84
    :cond_18
    iput-object p1, p0, Lcom/qbao/sdk/e/d;->gk:Landroid/graphics/Bitmap;

    .line 88
    :goto_1a
    return-void

    .line 87
    :cond_1b
    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/e/d;->gk:Landroid/graphics/Bitmap;

    goto :goto_1a
.end method

.method public static ak(Ljava/lang/String;)Lcom/qbao/sdk/e/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 39
    :cond_11
    sget-object v0, Lcom/qbao/sdk/e/d;->af:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/qbao/sdk/e/d;->c(Ljava/io/InputStream;)Lcom/qbao/sdk/e/d;

    move-result-object v0

    return-object v0
.end method

.method public static al(Ljava/lang/String;)Lcom/qbao/sdk/e/d;
    .registers 3

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/OpeningAnimation/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qbao/sdk/e/d;->ak(Ljava/lang/String;)Lcom/qbao/sdk/e/d;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 48
    :goto_19
    return-object v0

    .line 46
    :catch_1a
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static b(Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 5

    .prologue
    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 108
    if-eqz p1, :cond_e

    .line 109
    const/4 v0, -0x1

    const-string v1, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-interface {p1, v0, v1}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 143
    :cond_e
    :goto_e
    return-void

    .line 114
    :cond_f
    new-instance v0, Lcom/qbao/sdk/e/d$1;

    invoke-static {}, Lcom/qbao/sdk/a/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/qbao/sdk/a/f;->ao()Lcom/qbao/core/c/c;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/qbao/sdk/e/d$1;-><init>(Landroid/content/Context;Lcom/qbao/core/c/c;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 142
    invoke-virtual {v0}, Lcom/qbao/core/c/b;->y()V

    goto :goto_e
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Z)Lcom/qbao/sdk/e/d;
    .registers 6

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/qbao/sdk/d/a;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_c

    new-instance v0, Lcom/qbao/sdk/e/d;

    invoke-direct {v0, v1}, Lcom/qbao/sdk/e/d;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    :goto_b
    return-object v0

    .line 58
    :cond_c
    invoke-static {p1}, Lcom/qbao/core/util/k;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_20

    new-instance v1, Lcom/qbao/sdk/e/d;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/qbao/sdk/e/d;-><init>(Landroid/graphics/Bitmap;Z)V

    move-object v0, v1

    goto :goto_b

    .line 62
    :cond_20
    if-eqz p2, :cond_27

    .line 63
    invoke-static {p1}, Lcom/qbao/sdk/e/d;->al(Ljava/lang/String;)Lcom/qbao/sdk/e/d;

    move-result-object v0

    goto :goto_b

    .line 65
    :cond_27
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static c(Ljava/io/InputStream;)Lcom/qbao/sdk/e/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 26
    if-nez p0, :cond_4

    .line 31
    :cond_3
    :goto_3
    return-object v0

    .line 27
    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    new-instance v0, Lcom/qbao/sdk/e/d;

    invoke-direct {v0, v1}, Lcom/qbao/sdk/e/d;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/qbao/sdk/e/d;->gk:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/qbao/sdk/e/d;->gk:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/qbao/sdk/e/d;->gk:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Lcom/qbao/sdk/e/d;->gl:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/qbao/sdk/e/d;->gm:I

    return v0
.end method

.method public o(I)V
    .registers 2

    .prologue
    .line 159
    iput p1, p0, Lcom/qbao/sdk/e/d;->gl:I

    .line 160
    return-void
.end method

.method public recycle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/qbao/sdk/e/d;->gk:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/qbao/sdk/e/d;->gk:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 92
    iget-object v0, p0, Lcom/qbao/sdk/e/d;->gk:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    iput-object v1, p0, Lcom/qbao/sdk/e/d;->gk:Landroid/graphics/Bitmap;

    .line 95
    :cond_14
    iput-object v1, p0, Lcom/qbao/sdk/e/d;->gk:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method

.method public setY(I)V
    .registers 2

    .prologue
    .line 168
    iput p1, p0, Lcom/qbao/sdk/e/d;->gm:I

    .line 169
    return-void
.end method
