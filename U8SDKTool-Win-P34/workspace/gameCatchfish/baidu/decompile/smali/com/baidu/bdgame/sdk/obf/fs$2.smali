.class final Lcom/baidu/bdgame/sdk/obf/fs$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/go;


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
    .line 63
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fs$2;->a:Lcom/baidu/bdgame/sdk/obf/fs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs$2;->a:Lcom/baidu/bdgame/sdk/obf/fs;

    invoke-static {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/fs;Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;)V

    .line 69
    return-void
.end method
