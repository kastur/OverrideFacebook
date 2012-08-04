.class public final enum Lcom/facebook/orca/app/OrcaAppType$Audience;
.super Ljava/lang/Enum;
.source "OrcaAppType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/app/OrcaAppType$Audience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/app/OrcaAppType$Audience;

.field public static final enum DEVELOPMENT:Lcom/facebook/orca/app/OrcaAppType$Audience;

.field public static final enum FACEBOOK:Lcom/facebook/orca/app/OrcaAppType$Audience;

.field public static final enum PUBLIC:Lcom/facebook/orca/app/OrcaAppType$Audience;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/facebook/orca/app/OrcaAppType$Audience;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/app/OrcaAppType$Audience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/app/OrcaAppType$Audience;->PUBLIC:Lcom/facebook/orca/app/OrcaAppType$Audience;

    .line 17
    new-instance v0, Lcom/facebook/orca/app/OrcaAppType$Audience;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/app/OrcaAppType$Audience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/app/OrcaAppType$Audience;->FACEBOOK:Lcom/facebook/orca/app/OrcaAppType$Audience;

    .line 18
    new-instance v0, Lcom/facebook/orca/app/OrcaAppType$Audience;

    const-string v1, "DEVELOPMENT"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/app/OrcaAppType$Audience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/app/OrcaAppType$Audience;->DEVELOPMENT:Lcom/facebook/orca/app/OrcaAppType$Audience;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/app/OrcaAppType$Audience;

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType$Audience;->PUBLIC:Lcom/facebook/orca/app/OrcaAppType$Audience;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType$Audience;->FACEBOOK:Lcom/facebook/orca/app/OrcaAppType$Audience;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType$Audience;->DEVELOPMENT:Lcom/facebook/orca/app/OrcaAppType$Audience;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/app/OrcaAppType$Audience;->$VALUES:[Lcom/facebook/orca/app/OrcaAppType$Audience;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/app/OrcaAppType$Audience;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/facebook/orca/app/OrcaAppType$Audience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType$Audience;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/app/OrcaAppType$Audience;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/facebook/orca/app/OrcaAppType$Audience;->$VALUES:[Lcom/facebook/orca/app/OrcaAppType$Audience;

    invoke-virtual {v0}, [Lcom/facebook/orca/app/OrcaAppType$Audience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/app/OrcaAppType$Audience;

    return-object v0
.end method
