.class public Lcom/baidu/mtjstatsdk/game/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:D

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IDLjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/mtjstatsdk/game/a/c;->b:I

    iput-wide p3, p0, Lcom/baidu/mtjstatsdk/game/a/c;->c:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->d:J

    iput-object p5, p0, Lcom/baidu/mtjstatsdk/game/a/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDLjava/lang/String;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/mtjstatsdk/game/a/c;->b:I

    iput-wide p3, p0, Lcom/baidu/mtjstatsdk/game/a/c;->c:D

    iput-wide p6, p0, Lcom/baidu/mtjstatsdk/game/a/c;->d:J

    iput-object p5, p0, Lcom/baidu/mtjstatsdk/game/a/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->b:I

    return v0
.end method

.method public d()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->c:D

    return-wide v0
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->d:J

    return-wide v0
.end method
