.class final Lcom/baidu/bdgame/sdk/obf/gb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/gn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/gb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gb;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gb$1;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/ig;)V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$1;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/gb;->a(Lcom/baidu/bdgame/sdk/obf/gb;Lcom/baidu/bdgame/sdk/obf/ig;)V

    .line 60
    return-void
.end method
