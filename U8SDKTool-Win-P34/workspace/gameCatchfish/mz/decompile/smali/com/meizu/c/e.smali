.class public abstract Lcom/meizu/c/e;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/c/d;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/meizu/c/d;
    .registers 3

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.meizu.gamebar.IMzGameBarService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/meizu/c/d;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/meizu/c/d;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/meizu/c/f;

    invoke-direct {v0, p0}, Lcom/meizu/c/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_c0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 42
    :sswitch_a
    const-string v0, "com.meizu.gamebar.IMzGameBarService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    .line 43
    goto :goto_9

    .line 47
    :sswitch_11
    const-string v0, "com.meizu.gamebar.IMzGameBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 50
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 55
    :goto_24
    invoke-virtual {p0, v0}, Lcom/meizu/c/e;->a(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 57
    goto :goto_9

    :cond_2c
    move-object v0, v1

    .line 53
    goto :goto_24

    .line 61
    :sswitch_2e
    const-string v0, "com.meizu.gamebar.IMzGameBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    .line 64
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 69
    :goto_41
    invoke-virtual {p0, v0}, Lcom/meizu/c/e;->b(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 71
    goto :goto_9

    :cond_49
    move-object v0, v1

    .line 67
    goto :goto_41

    .line 75
    :sswitch_4b
    const-string v0, "com.meizu.gamebar.IMzGameBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_66

    .line 78
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 83
    :goto_5e
    invoke-virtual {p0, v0}, Lcom/meizu/c/e;->c(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 85
    goto :goto_9

    :cond_66
    move-object v0, v1

    .line 81
    goto :goto_5e

    .line 89
    :sswitch_68
    const-string v0, "com.meizu.gamebar.IMzGameBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8a

    .line 92
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v2, v0

    .line 98
    :goto_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_8c

    .line 99
    :goto_82
    invoke-virtual {p0, v2, v1}, Lcom/meizu/c/e;->a(Landroid/os/Bundle;Lcom/meizu/c/a;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 101
    goto :goto_9

    :cond_8a
    move-object v2, v1

    .line 95
    goto :goto_7c

    .line 98
    :cond_8c
    const-string v0, "com.meizu.gamebar.IMzGameBarResponse"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_9c

    instance-of v1, v0, Lcom/meizu/c/a;

    if-eqz v1, :cond_9c

    check-cast v0, Lcom/meizu/c/a;

    move-object v1, v0

    goto :goto_82

    :cond_9c
    new-instance v1, Lcom/meizu/c/c;

    invoke-direct {v1, v4}, Lcom/meizu/c/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_82

    .line 105
    :sswitch_a2
    const-string v0, "com.meizu.gamebar.IMzGameBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_be

    .line 108
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 113
    :goto_b5
    invoke-virtual {p0, v0}, Lcom/meizu/c/e;->d(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 115
    goto/16 :goto_9

    :cond_be
    move-object v0, v1

    .line 111
    goto :goto_b5

    .line 38
    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_68
        0x5 -> :sswitch_a2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
