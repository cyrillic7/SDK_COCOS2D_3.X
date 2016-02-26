.class final Lcom/baidu/bdgame/sdk/obf/ll$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ll;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ll;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ll;I)V
    .registers 3

    .prologue
    .line 69
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ll$2;->b:Lcom/baidu/bdgame/sdk/obf/ll;

    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/ll$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll$2;->b:Lcom/baidu/bdgame/sdk/obf/ll;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ll;->b(Lcom/baidu/bdgame/sdk/obf/ll;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ll$2;->a:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll$2;->b:Lcom/baidu/bdgame/sdk/obf/ll;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ll$2;->a:I

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ll;->a(Lcom/baidu/bdgame/sdk/obf/ll;I)I

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll$2;->b:Lcom/baidu/bdgame/sdk/obf/ll;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ll;->c(Lcom/baidu/bdgame/sdk/obf/ll;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 76
    return-void
.end method
