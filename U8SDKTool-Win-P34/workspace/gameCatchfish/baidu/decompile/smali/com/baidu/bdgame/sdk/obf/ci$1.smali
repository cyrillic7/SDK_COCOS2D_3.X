.class final Lcom/baidu/bdgame/sdk/obf/ci$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ci;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ci;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ci;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ci$1;->a:Lcom/baidu/bdgame/sdk/obf/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 59
    if-eqz p1, :cond_18

    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci$1;->a:Lcom/baidu/bdgame/sdk/obf/ci;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ci;->a(Lcom/baidu/bdgame/sdk/obf/ci;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci$1;->a:Lcom/baidu/bdgame/sdk/obf/ci;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ci;->b(Lcom/baidu/bdgame/sdk/obf/ci;)Lcom/baidu/platformsdk/widget/AmazingListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/widget/AmazingListView;->setVisibility(I)V

    .line 66
    :goto_17
    return-void

    .line 63
    :cond_18
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci$1;->a:Lcom/baidu/bdgame/sdk/obf/ci;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ci;->a(Lcom/baidu/bdgame/sdk/obf/ci;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci$1;->a:Lcom/baidu/bdgame/sdk/obf/ci;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ci;->b(Lcom/baidu/bdgame/sdk/obf/ci;)Lcom/baidu/platformsdk/widget/AmazingListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/widget/AmazingListView;->setVisibility(I)V

    goto :goto_17
.end method
