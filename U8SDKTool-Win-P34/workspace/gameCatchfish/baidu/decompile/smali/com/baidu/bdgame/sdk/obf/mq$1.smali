.class final Lcom/baidu/bdgame/sdk/obf/mq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mq;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mq;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mq;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mq$1;->a:Lcom/baidu/bdgame/sdk/obf/mq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq$1;->a:Lcom/baidu/bdgame/sdk/obf/mq;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mq;->a(Lcom/baidu/bdgame/sdk/obf/mq;)Lcom/baidu/bdgame/sdk/obf/mq$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq$1;->a:Lcom/baidu/bdgame/sdk/obf/mq;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mq;->a(Lcom/baidu/bdgame/sdk/obf/mq;)Lcom/baidu/bdgame/sdk/obf/mq$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/mq$a;->a()V

    .line 56
    :cond_11
    return-void
.end method
