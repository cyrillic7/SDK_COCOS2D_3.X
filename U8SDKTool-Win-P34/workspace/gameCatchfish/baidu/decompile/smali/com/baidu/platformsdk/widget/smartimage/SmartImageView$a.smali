.class Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;
.super Lcom/baidu/bdgame/sdk/obf/me$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;

.field private b:Lcom/baidu/bdgame/sdk/obf/mb;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;Lcom/baidu/bdgame/sdk/obf/mb;Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 202
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;->a:Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/me$a;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;->b:Lcom/baidu/bdgame/sdk/obf/mb;

    .line 204
    iput-object p3, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;->c:Ljava/lang/Integer;

    .line 205
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;->b:Lcom/baidu/bdgame/sdk/obf/mb;

    iget-object v1, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;->a:Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;

    invoke-static {v1}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->a(Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;)Lcom/baidu/bdgame/sdk/obf/mb;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 223
    :cond_a
    :goto_a
    return-void

    .line 215
    :cond_b
    if-eqz p1, :cond_13

    .line 216
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;->a:Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;

    invoke-virtual {v0, p1}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_a

    .line 219
    :cond_13
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 220
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;->a:Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;

    iget-object v1, p0, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView$a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/widget/smartimage/SmartImageView;->setImageResource(I)V

    goto :goto_a
.end method
