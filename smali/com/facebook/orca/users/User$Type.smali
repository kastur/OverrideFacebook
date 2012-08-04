.class public final enum Lcom/facebook/orca/users/User$Type;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/users/User$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/users/User$Type;

.field public static final enum ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

.field public static final enum EMAIL:Lcom/facebook/orca/users/User$Type;

.field public static final enum FACEBOOK:Lcom/facebook/orca/users/User$Type;

.field public static final enum FACEBOOK_OBJECT:Lcom/facebook/orca/users/User$Type;

.field public static final enum PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/facebook/orca/users/User$Type;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/users/User$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    .line 24
    new-instance v0, Lcom/facebook/orca/users/User$Type;

    const-string v1, "ADDRESS_BOOK"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/users/User$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    .line 25
    new-instance v0, Lcom/facebook/orca/users/User$Type;

    const-string v1, "PHONE_NUMBER"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/users/User$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    .line 26
    new-instance v0, Lcom/facebook/orca/users/User$Type;

    const-string v1, "FACEBOOK_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/users/User$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/users/User$Type;->FACEBOOK_OBJECT:Lcom/facebook/orca/users/User$Type;

    .line 27
    new-instance v0, Lcom/facebook/orca/users/User$Type;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v6}, Lcom/facebook/orca/users/User$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/users/User$Type;->EMAIL:Lcom/facebook/orca/users/User$Type;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/orca/users/User$Type;

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK_OBJECT:Lcom/facebook/orca/users/User$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/orca/users/User$Type;->EMAIL:Lcom/facebook/orca/users/User$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/orca/users/User$Type;->$VALUES:[Lcom/facebook/orca/users/User$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/users/User$Type;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/facebook/orca/users/User$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User$Type;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/users/User$Type;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/facebook/orca/users/User$Type;->$VALUES:[Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0}, [Lcom/facebook/orca/users/User$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/users/User$Type;

    return-object v0
.end method
