.class Lcom/baidu/mtjstatsdk/b/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mtjstatsdk/b/d;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/baidu/mtjstatsdk/b/d;->a:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
