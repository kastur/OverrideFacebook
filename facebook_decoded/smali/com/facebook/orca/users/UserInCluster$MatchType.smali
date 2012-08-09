.class public final enum Lcom/facebook/orca/users/UserInCluster$MatchType;
.super Ljava/lang/Enum;
.source "UserInCluster.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/users/UserInCluster$MatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/users/UserInCluster$MatchType;

.field public static final enum IDENTIFIER:Lcom/facebook/orca/users/UserInCluster$MatchType;

.field public static final enum NAME:Lcom/facebook/orca/users/UserInCluster$MatchType;

.field public static final enum PRIMARY:Lcom/facebook/orca/users/UserInCluster$MatchType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/facebook/orca/users/UserInCluster$MatchType;

    const-string v1, "PRIMARY"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/users/UserInCluster$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/users/UserInCluster$MatchType;->PRIMARY:Lcom/facebook/orca/users/UserInCluster$MatchType;

    .line 23
    new-instance v0, Lcom/facebook/orca/users/UserInCluster$MatchType;

    const-string v1, "IDENTIFIER"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/users/UserInCluster$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/users/UserInCluster$MatchType;->IDENTIFIER:Lcom/facebook/orca/users/UserInCluster$MatchType;

    .line 26
    new-instance v0, Lcom/facebook/orca/users/UserInCluster$MatchType;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/users/UserInCluster$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/users/UserInCluster$MatchType;->NAME:Lcom/facebook/orca/users/UserInCluster$MatchType;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/users/UserInCluster$MatchType;

    sget-object v1, Lcom/facebook/orca/users/UserInCluster$MatchType;->PRIMARY:Lcom/facebook/orca/users/UserInCluster$MatchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/users/UserInCluster$MatchType;->IDENTIFIER:Lcom/facebook/orca/users/UserInCluster$MatchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/users/UserInCluster$MatchType;->NAME:Lcom/facebook/orca/users/UserInCluster$MatchType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/users/UserInCluster$MatchType;->$VALUES:[Lcom/facebook/orca/users/UserInCluster$MatchType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/users/UserInCluster$MatchType;
    .locals 1
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/facebook/orca/users/UserInCluster$MatchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserInCluster$MatchType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/users/UserInCluster$MatchType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/facebook/orca/users/UserInCluster$MatchType;->$VALUES:[Lcom/facebook/orca/users/UserInCluster$MatchType;

    invoke-virtual {v0}, [Lcom/facebook/orca/users/UserInCluster$MatchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/users/UserInCluster$MatchType;

    return-object v0
.end method
