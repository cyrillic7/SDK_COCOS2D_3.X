.class Lcom/baidu/bdgame/sdk/obf/ga$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/baidu/bdgame/sdk/obf/ig;

.field f:Ljava/lang/String;

.field g:I

.field h:J

.field final synthetic i:Lcom/baidu/bdgame/sdk/obf/ga;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/ga;)V
    .registers 2

    .prologue
    .line 549
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ga$a;->i:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/ga;Lcom/baidu/bdgame/sdk/obf/ga$1;)V
    .registers 3

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ga$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ga;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 562
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$a;->c:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
