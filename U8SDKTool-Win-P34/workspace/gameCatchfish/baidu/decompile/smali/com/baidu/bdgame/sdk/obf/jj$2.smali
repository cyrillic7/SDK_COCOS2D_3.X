.class final Lcom/baidu/bdgame/sdk/obf/jj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jj;->a(Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jj;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jj;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jj$2;->a:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$2;->a:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Lcom/baidu/bdgame/sdk/obf/jj;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->e()V

    .line 168
    return-void
.end method
