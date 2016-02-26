.class final Lcom/baidu/bdgame/sdk/obf/ll$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ll;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ll;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ll;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ll$1;->a:Lcom/baidu/bdgame/sdk/obf/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll$1;->a:Lcom/baidu/bdgame/sdk/obf/ll;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ll;->a(Lcom/baidu/bdgame/sdk/obf/ll;)V

    .line 45
    return-void
.end method
