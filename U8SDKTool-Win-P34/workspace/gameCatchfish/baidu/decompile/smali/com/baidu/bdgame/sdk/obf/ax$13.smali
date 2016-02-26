.class final Lcom/baidu/bdgame/sdk/obf/ax$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ax;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ax;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ax;)V
    .registers 2

    .prologue
    .line 311
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax$13;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$13;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Lcom/baidu/bdgame/sdk/obf/ax;Ljava/lang/String;)V

    .line 316
    return-void
.end method
