.class public Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/lz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Lcom/baidu/bdgame/sdk/obf/me;

.field private c:Lcom/baidu/bdgame/sdk/obf/mb;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lm;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->d:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->d:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->d:I

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;)Lcom/baidu/bdgame/sdk/obf/mb;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->c:Lcom/baidu/bdgame/sdk/obf/mb;

    return-object v0
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/mb;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 7

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->c:Lcom/baidu/bdgame/sdk/obf/mb;

    .line 113
    iget v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->d:I

    invoke-interface {p1, v0}, Lcom/baidu/bdgame/sdk/obf/mb;->a(I)V

    .line 117
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/mb;->a(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_16

    .line 119
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    :goto_15
    return-void

    .line 126
    :cond_16
    if-eqz p3, :cond_1f

    .line 127
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->setImageResource(I)V

    .line 131
    :cond_1f
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->b:Lcom/baidu/bdgame/sdk/obf/me;

    if-eqz v0, :cond_2b

    .line 132
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->b:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/me;->a()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->b:Lcom/baidu/bdgame/sdk/obf/me;

    .line 138
    :cond_2b
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/me;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/me;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/mb;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->b:Lcom/baidu/bdgame/sdk/obf/me;

    .line 139
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->b:Lcom/baidu/bdgame/sdk/obf/me;

    new-instance v1, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;

    iget-object v2, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->c:Lcom/baidu/bdgame/sdk/obf/mb;

    invoke-direct {v1, p0, v2, p2}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;-><init>(Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;Lcom/baidu/bdgame/sdk/obf/mb;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/me;->a(Lcom/baidu/bdgame/sdk/obf/me$a;)V

    .line 145
    sget-object v0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->b:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_15
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->b:Lcom/baidu/bdgame/sdk/obf/me;

    if-eqz v0, :cond_19

    .line 161
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->b:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/me;->b()Lcom/baidu/bdgame/sdk/obf/mb;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_19

    instance-of v1, v0, Lcom/baidu/bdgame/sdk/obf/mf;

    if-eqz v1, :cond_19

    .line 163
    check-cast v0, Lcom/baidu/bdgame/sdk/obf/mf;

    .line 164
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mf;->a()V

    .line 167
    :cond_19
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 49
    iput p1, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->d:I

    .line 50
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/mb;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0, v0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->a(Lcom/baidu/bdgame/sdk/obf/mb;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 102
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/mb;Ljava/lang/Integer;)V
    .registers 3

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p2}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->a(Lcom/baidu/bdgame/sdk/obf/mb;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 106
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/mc;)V
    .registers 3

    .prologue
    .line 173
    invoke-interface {p1}, Lcom/baidu/bdgame/sdk/obf/mc;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_a

    .line 175
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :goto_9
    return-void

    .line 181
    :cond_a
    invoke-interface {p1}, Lcom/baidu/bdgame/sdk/obf/mc;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_14

    .line 183
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_9

    .line 189
    :cond_14
    invoke-interface {p1}, Lcom/baidu/bdgame/sdk/obf/mc;->b()I

    move-result v0

    .line 190
    if-lez v0, :cond_1e

    .line 191
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->setImageResource(I)V

    goto :goto_9

    .line 193
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 69
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mf;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/mf;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->a(Lcom/baidu/bdgame/sdk/obf/mb;)V

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 59
    iget v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->d:I

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/mf;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_c

    .line 61
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    :goto_b
    return-void

    .line 63
    :cond_c
    invoke-virtual {p0, p2}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->setImageResource(I)V

    goto :goto_b
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 73
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mf;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/mf;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->a(Lcom/baidu/bdgame/sdk/obf/mb;Ljava/lang/Integer;)V

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5

    .prologue
    .line 77
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mf;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/mf;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->a(Lcom/baidu/bdgame/sdk/obf/mb;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/lang/Integer;)V
    .registers 5

    .prologue
    .line 81
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mf;

    invoke-direct {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/mf;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0, p3, p3}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->a(Lcom/baidu/bdgame/sdk/obf/mb;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 82
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 149
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ma;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ma;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->a(Lcom/baidu/bdgame/sdk/obf/mb;Ljava/lang/Integer;)V

    .line 150
    return-void
.end method
