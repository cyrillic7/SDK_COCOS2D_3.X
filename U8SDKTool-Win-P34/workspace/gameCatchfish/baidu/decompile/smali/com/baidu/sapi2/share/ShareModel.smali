.class Lcom/baidu/sapi2/share/ShareModel;
.super Ljava/lang/Object;
.source "ShareModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/sapi2/share/ShareModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/sapi2/SapiAccount;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/sapi2/share/ShareEvent;

.field private d:Ljava/lang/String;

.field private e:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/sapi2/share/d;

    invoke-direct {v0}, Lcom/baidu/sapi2/share/d;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/share/ShareModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    .line 45
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    .line 48
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/share/ShareModel;->a(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/baidu/sapi2/share/ShareEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/baidu/sapi2/share/ShareEvent;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/baidu/sapi2/share/ShareEvent;Lcom/baidu/sapi2/SapiAccount;)V
    .registers 3
    .param p1, "event"    # Lcom/baidu/sapi2/share/ShareEvent;
    .param p2, "currentAccount"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;)V

    .line 57
    iput-object p2, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/baidu/sapi2/share/ShareEvent;Lcom/baidu/sapi2/SapiAccount;Ljava/util/List;)V
    .registers 4
    .param p1, "event"    # Lcom/baidu/sapi2/share/ShareEvent;
    .param p2, "currentAccount"    # Lcom/baidu/sapi2/SapiAccount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/share/ShareEvent;",
            "Lcom/baidu/sapi2/SapiAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, "shareAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-direct {p0, p1, p2}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;Lcom/baidu/sapi2/SapiAccount;)V

    .line 62
    iput-object p3, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    .line 63
    return-void
.end method

.method private a(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/share/ShareEvent;

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    .line 101
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    sget-object v1, Lcom/baidu/sapi2/SapiAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 102
    const-class v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->e:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "encryptedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-virtual {p0}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 124
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 126
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :cond_21
    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/share/ShareModel;->a(Ljava/util/List;)V

    .line 127
    iget-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    if-eqz v3, :cond_30

    .line 128
    iget-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-static {p1, v3}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    .line 130
    :cond_30
    iget-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 131
    iget-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    .line 133
    :cond_40
    return-void
.end method

.method a(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 2
    .param p1, "currentAccount"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    .line 89
    return-void
.end method

.method a(Lcom/baidu/sapi2/share/ShareEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/baidu/sapi2/share/ShareEvent;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    .line 81
    return-void
.end method

.method a(Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;)V
    .registers 2
    .param p1, "senderStrategy"    # Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->e:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 77
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    .line 97
    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "shareAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    if-eqz p1, :cond_4

    .line 71
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    .line 73
    :cond_4
    return-void
.end method

.method b()Lcom/baidu/sapi2/share/ShareEvent;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    return-object v0
.end method

.method b(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, "decryptedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-virtual {p0}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 138
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/e;->b(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 140
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :cond_21
    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/share/ShareModel;->a(Ljava/util/List;)V

    .line 141
    iget-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    if-eqz v3, :cond_30

    .line 142
    iget-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-static {p1, v3}, Lcom/baidu/sapi2/share/e;->b(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    .line 144
    :cond_30
    iget-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 145
    iget-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/baidu/sapi2/share/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    .line 147
    :cond_40
    return-void
.end method

.method c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareModel{currentAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", senderStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->e:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 116
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->e:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return-void
.end method
