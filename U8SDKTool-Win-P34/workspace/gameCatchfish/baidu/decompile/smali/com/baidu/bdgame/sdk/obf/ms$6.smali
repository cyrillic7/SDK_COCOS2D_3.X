.class final Lcom/baidu/bdgame/sdk/obf/ms$6;
.super Lcom/baidu/bdgame/sdk/obf/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ms;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ms;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ms;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 344
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ms$6;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/bi;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$6;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->i(Lcom/baidu/bdgame/sdk/obf/ms;)V

    .line 355
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$6;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->m()V

    .line 356
    return-void
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 348
    invoke-static {p1, p3}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$6;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->m()V

    .line 350
    return-void
.end method
