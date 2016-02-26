.class final Lcom/baidu/bdgame/sdk/obf/ct$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ct;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ct;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 2

    .prologue
    .line 242
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct$2;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$2;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/ct;)Lcom/baidu/bdgame/sdk/obf/ct$a;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 247
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$2;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/ct;)Lcom/baidu/bdgame/sdk/obf/ct$a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct$2;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->c(Lcom/baidu/bdgame/sdk/obf/ct;)Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ct$a;->a(Lcom/baidu/bdgame/sdk/obf/ic;)V

    .line 249
    :cond_17
    return-void
.end method
