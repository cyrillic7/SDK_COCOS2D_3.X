.class final Lcom/baidu/bdgame/sdk/obf/fv$1;
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
    .line 51
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fv$1;->a:Lcom/baidu/bdgame/sdk/obf/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fv$1;->a:Lcom/baidu/bdgame/sdk/obf/fv;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fv;->a(Lcom/baidu/bdgame/sdk/obf/fv;Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fv$1;->a:Lcom/baidu/bdgame/sdk/obf/fv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fv;->b(Lcom/baidu/bdgame/sdk/obf/fv;)Lcom/baidu/bdgame/sdk/obf/fw;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fv$1;->a:Lcom/baidu/bdgame/sdk/obf/fv;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fv;->a(Lcom/baidu/bdgame/sdk/obf/fv;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fw;->d(I)V

    .line 57
    return-void
.end method
