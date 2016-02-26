.class final Lcom/baidu/bdgame/sdk/obf/jo$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jo$3;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jo$3;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jo$3;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jo$3$1;->a:Lcom/baidu/bdgame/sdk/obf/jo$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$3$1;->a:Lcom/baidu/bdgame/sdk/obf/jo$3;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/jo$3;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->h(Lcom/baidu/bdgame/sdk/obf/jo;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    .line 144
    return-void
.end method
