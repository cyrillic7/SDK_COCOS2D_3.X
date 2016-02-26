.class final Lcom/baidu/bdgame/sdk/obf/ex$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ex;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ex;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ex;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ex$2;->a:Lcom/baidu/bdgame/sdk/obf/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex$2;->a:Lcom/baidu/bdgame/sdk/obf/ex;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ex;->c(Lcom/baidu/bdgame/sdk/obf/ex;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex$2;->a:Lcom/baidu/bdgame/sdk/obf/ex;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ex;->b(Lcom/baidu/bdgame/sdk/obf/ex;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_paycenter_sv_content"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    .line 116
    return-void
.end method
