.class final Lcom/baidu/bdgame/sdk/obf/mp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mp;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mp;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mp;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mp$1;->a:Lcom/baidu/bdgame/sdk/obf/mp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mp$1;->a:Lcom/baidu/bdgame/sdk/obf/mp;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mp;->a(Lcom/baidu/bdgame/sdk/obf/mp;)Lcom/baidu/bdgame/sdk/obf/mp$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mp$1;->a:Lcom/baidu/bdgame/sdk/obf/mp;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mp;->a(Lcom/baidu/bdgame/sdk/obf/mp;)Lcom/baidu/bdgame/sdk/obf/mp$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/mp$a;->a()V

    .line 57
    :cond_11
    return-void
.end method
