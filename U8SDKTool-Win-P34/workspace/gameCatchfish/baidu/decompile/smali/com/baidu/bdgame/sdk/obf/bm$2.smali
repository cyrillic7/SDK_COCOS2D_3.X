.class final Lcom/baidu/bdgame/sdk/obf/bm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bm;->f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/n;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 2

    .prologue
    .line 286
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bm$2;->a:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 291
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$2;->a:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v0

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/p;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 292
    return-void
.end method
