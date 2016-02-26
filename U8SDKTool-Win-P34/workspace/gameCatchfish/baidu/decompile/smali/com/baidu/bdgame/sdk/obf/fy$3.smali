.class final Lcom/baidu/bdgame/sdk/obf/fy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fy;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fy;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fy;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fy$3;->a:Lcom/baidu/bdgame/sdk/obf/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy$3;->a:Lcom/baidu/bdgame/sdk/obf/fy;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fy;->a(Lcom/baidu/bdgame/sdk/obf/fy;Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy$3;->a:Lcom/baidu/bdgame/sdk/obf/fy;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fy;->c(Lcom/baidu/bdgame/sdk/obf/fy;)Lcom/baidu/bdgame/sdk/obf/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fy$3;->a:Lcom/baidu/bdgame/sdk/obf/fy;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fy;->f(Lcom/baidu/bdgame/sdk/obf/fy;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fz;->d(I)V

    .line 138
    return-void
.end method
