.class final Lcom/baidu/bdgame/sdk/obf/jp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jp;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/jp;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jp;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jp$1;->b:Lcom/baidu/bdgame/sdk/obf/jp;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/jp$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jp$1;->b:Lcom/baidu/bdgame/sdk/obf/jp;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jp$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jp;->a(Lcom/baidu/bdgame/sdk/obf/jp;Landroid/content/Context;)V

    .line 39
    return-void
.end method
