.class public Lcom/facebook/orca/users/UserInCluster;
.super Ljava/lang/Object;
.source "UserInCluster.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/users/UserInCluster;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/users/User;

.field private final b:Lcom/facebook/orca/users/UserInCluster$MatchType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/facebook/orca/users/UserInCluster$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserInCluster$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/UserInCluster;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    iput-object v0, p0, Lcom/facebook/orca/users/UserInCluster;->a:Lcom/facebook/orca/users/User;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserInCluster$MatchType;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/users/UserInCluster$MatchType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserInCluster;->b:Lcom/facebook/orca/users/UserInCluster$MatchType;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/UserInCluster;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/users/UserInCluster;->a:Lcom/facebook/orca/users/User;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/users/UserInCluster$MatchType;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/users/UserInCluster;->b:Lcom/facebook/orca/users/UserInCluster$MatchType;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/users/UserInCluster;->a:Lcom/facebook/orca/users/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/users/UserInCluster;->b:Lcom/facebook/orca/users/UserInCluster$MatchType;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster$MatchType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
