.class public final enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.super Ljava/lang/Enum;
.source "JsonSerialize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

.field public static final enum ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

.field public static final enum NON_DEFAULT:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

.field public static final enum NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    new-instance v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 156
    new-instance v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    const-string v1, "NON_NULL"

    invoke-direct {v0, v1, v3}, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 166
    new-instance v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    const-string v1, "NON_DEFAULT"

    invoke-direct {v0, v1, v4}, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_DEFAULT:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    sget-object v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    aput-object v1, v0, v2

    sget-object v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_DEFAULT:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    aput-object v1, v0, v4

    sput-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->$VALUES:[Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

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
    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 1
    .parameter

    .prologue
    .line 144
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    return-object v0
.end method

.method public static values()[Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->$VALUES:[Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    return-object v0
.end method
