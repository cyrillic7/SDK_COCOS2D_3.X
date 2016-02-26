.class public Lcom/baidu/android/pushservice/richmedia/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/richmedia/n$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field protected e:Lcom/baidu/android/pushservice/richmedia/n$a;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field private i:Lcom/baidu/android/pushservice/richmedia/l;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/baidu/android/pushservice/richmedia/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/richmedia/l;->a(Ljava/lang/String;)Lcom/baidu/android/pushservice/richmedia/l;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->i:Lcom/baidu/android/pushservice/richmedia/l;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->k:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->k:Ljava/util/Map;

    return-object v0
.end method

.method public a(Lcom/baidu/android/pushservice/richmedia/n$a;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/richmedia/n;->e:Lcom/baidu/android/pushservice/richmedia/n$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/richmedia/n;->l:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/baidu/android/pushservice/richmedia/n$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->e:Lcom/baidu/android/pushservice/richmedia/n$a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->l:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "GET"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->l:Ljava/lang/String;

    goto :goto_6
.end method

.method public d()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    goto :goto_2d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/baidu/android/pushservice/richmedia/n;

    if-eqz v2, :cond_98

    check-cast p1, Lcom/baidu/android/pushservice/richmedia/n;

    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->j:Ljava/lang/String;

    if-nez v2, :cond_4b

    iget-object v2, p1, Lcom/baidu/android/pushservice/richmedia/n;->j:Ljava/lang/String;

    if-nez v2, :cond_49

    :goto_13
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->e:Lcom/baidu/android/pushservice/richmedia/n$a;

    if-nez v2, :cond_56

    iget-object v2, p1, Lcom/baidu/android/pushservice/richmedia/n;->e:Lcom/baidu/android/pushservice/richmedia/n$a;

    if-nez v2, :cond_49

    :goto_1b
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->k:Ljava/util/Map;

    if-nez v2, :cond_61

    iget-object v2, p1, Lcom/baidu/android/pushservice/richmedia/n;->k:Ljava/util/Map;

    if-nez v2, :cond_49

    :goto_23
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->l:Ljava/lang/String;

    if-nez v2, :cond_6c

    iget-object v2, p1, Lcom/baidu/android/pushservice/richmedia/n;->l:Ljava/lang/String;

    if-nez v2, :cond_49

    :goto_2b
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    if-nez v2, :cond_77

    iget-object v2, p1, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    if-nez v2, :cond_49

    :goto_33
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->n:Ljava/lang/String;

    if-nez v2, :cond_82

    iget-object v2, p1, Lcom/baidu/android/pushservice/richmedia/n;->n:Ljava/lang/String;

    if-nez v2, :cond_49

    :goto_3b
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->f:Ljava/util/List;

    if-nez v2, :cond_8d

    iget-object v2, p1, Lcom/baidu/android/pushservice/richmedia/n;->f:Ljava/util/List;

    if-nez v2, :cond_49

    :goto_43
    iget-boolean v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->h:Z

    iget-boolean v3, p1, Lcom/baidu/android/pushservice/richmedia/n;->h:Z

    if-eq v2, v3, :cond_4

    :cond_49
    move v0, v1

    goto :goto_4

    :cond_4b
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/android/pushservice/richmedia/n;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_13

    :cond_56
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->e:Lcom/baidu/android/pushservice/richmedia/n$a;

    iget-object v3, p1, Lcom/baidu/android/pushservice/richmedia/n;->e:Lcom/baidu/android/pushservice/richmedia/n$a;

    invoke-virtual {v2, v3}, Lcom/baidu/android/pushservice/richmedia/n$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_1b

    :cond_61
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->k:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/android/pushservice/richmedia/n;->k:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_23

    :cond_6c
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/android/pushservice/richmedia/n;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_2b

    :cond_77
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_33

    :cond_82
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/android/pushservice/richmedia/n;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_3b

    :cond_8d
    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/n;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/baidu/android/pushservice/richmedia/n;->f:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_43

    :cond_98
    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/n;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/n;->e:Lcom/baidu/android/pushservice/richmedia/n$a;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/n;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/n;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/n;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/n;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/n;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/baidu/android/pushservice/richmedia/n;->h:Z

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(IZ)I

    move-result v0

    return v0
.end method
