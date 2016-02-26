.class final Lcom/baidu/bdgame/sdk/obf/fs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/gn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/fs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fs;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fs;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fs$1;->a:Lcom/baidu/bdgame/sdk/obf/fs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/ig;)V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs$1;->a:Lcom/baidu/bdgame/sdk/obf/fs;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/fs;Lcom/baidu/bdgame/sdk/obf/ig;)V

    .line 60
    return-void
.end method
