.class public Lcom/baidu/mtjstatsdk/game/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mtjstatsdk/game/a/b;->a:I

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/a/b;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/b;->b:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mtjstatsdk/game/a/b;->a:I

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/a/b;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/baidu/mtjstatsdk/game/a/b;->b:J

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/baidu/mtjstatsdk/game/a/b;->a:I

    return v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/b;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/b;->c:Ljava/lang/String;

    return-object v0
.end method
