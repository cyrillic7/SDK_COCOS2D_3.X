.class public Lcom/baidu/bdgame/sdk/obf/ka;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/baidu/bdgame/sdk/obf/ka;, "Lcom/baidu/bdgame/sdk/obf/ka<TF;TS;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    if-ne p1, p0, :cond_5

    .line 34
    .end local p1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .line 27
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Lcom/baidu/bdgame/sdk/obf/ka;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    .line 30
    :cond_b
    :try_start_b
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/ka;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_23

    .line 34
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4

    .line 31
    .restart local p1    # "o":Ljava/lang/Object;
    :catch_23
    move-exception v0

    move v0, v1

    .line 32
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 42
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    return v0
.end method
