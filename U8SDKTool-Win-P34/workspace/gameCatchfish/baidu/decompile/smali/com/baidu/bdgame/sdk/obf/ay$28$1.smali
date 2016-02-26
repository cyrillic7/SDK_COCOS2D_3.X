.class final Lcom/baidu/bdgame/sdk/obf/ay$28$1;
.super Lcom/baidu/bdgame/sdk/obf/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay$28;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay$28;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay$28;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 408
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$28$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$28;

    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/bi;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$28$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$28;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$28;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->o(Lcom/baidu/bdgame/sdk/obf/ay;)V

    .line 420
    return-void
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 413
    invoke-static {p1, p3}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$28$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$28;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$28;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 415
    return-void
.end method
