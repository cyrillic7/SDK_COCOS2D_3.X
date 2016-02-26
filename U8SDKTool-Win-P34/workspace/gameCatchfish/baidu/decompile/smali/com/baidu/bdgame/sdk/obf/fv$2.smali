.class final Lcom/baidu/bdgame/sdk/obf/fv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fv;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fv;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fv;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fv$2;->a:Lcom/baidu/bdgame/sdk/obf/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fv$2;->a:Lcom/baidu/bdgame/sdk/obf/fv;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fv;->b(Lcom/baidu/bdgame/sdk/obf/fv;Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fv$2;->a:Lcom/baidu/bdgame/sdk/obf/fv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fv;->c(Lcom/baidu/bdgame/sdk/obf/fv;)Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a()Lcom/baidu/bdgame/sdk/obf/ij;

    move-result-object v0

    .line 65
    if-nez v0, :cond_12

    .line 69
    :goto_11
    return-void

    .line 68
    :cond_12
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fv$2;->a:Lcom/baidu/bdgame/sdk/obf/fv;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fv;->b(Lcom/baidu/bdgame/sdk/obf/fv;)Lcom/baidu/bdgame/sdk/obf/fw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/fw;->a(Lcom/baidu/bdgame/sdk/obf/ij;)V

    goto :goto_11
.end method
