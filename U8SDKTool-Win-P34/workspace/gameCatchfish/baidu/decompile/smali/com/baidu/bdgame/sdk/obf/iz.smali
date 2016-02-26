.class public Lcom/baidu/bdgame/sdk/obf/iz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/baidu/bdgame/sdk/obf/iz;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iz;

    const-string v1, "1"

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/iz;->a:Lcom/baidu/bdgame/sdk/obf/iz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iz;->c:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iz;->b:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iz;->c:Ljava/lang/String;

    return-object v0
.end method
