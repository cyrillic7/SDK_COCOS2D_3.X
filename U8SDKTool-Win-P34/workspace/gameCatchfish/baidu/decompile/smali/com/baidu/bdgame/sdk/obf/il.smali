.class public Lcom/baidu/bdgame/sdk/obf/il;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/il;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/il;->a:Ljava/lang/String;

    .line 16
    return-void
.end method
