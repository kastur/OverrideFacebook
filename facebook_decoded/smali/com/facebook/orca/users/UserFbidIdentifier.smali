.class public Lcom/facebook/orca/users/UserFbidIdentifier;
.super Lcom/facebook/orca/users/UserIdentifier;
.source "UserFbidIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/users/UserFbidIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/orca/users/UserFbidIdentifier$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserFbidIdentifier$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/UserFbidIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    sget-object v0, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->FBID:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-direct {p0, v0}, Lcom/facebook/orca/users/UserIdentifier;-><init>(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserFbidIdentifier;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/UserFbidIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    sget-object v0, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->FBID:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-direct {p0, v0}, Lcom/facebook/orca/users/UserIdentifier;-><init>(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/users/UserFbidIdentifier;->a:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/users/UserFbidIdentifier;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/users/UserFbidIdentifier;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/users/UserFbidIdentifier;->a:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/users/UserFbidIdentifier;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
