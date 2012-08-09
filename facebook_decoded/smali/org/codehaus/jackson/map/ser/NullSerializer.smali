.class public Lorg/codehaus/jackson/map/ser/NullSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "NullSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ser/NullSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lorg/codehaus/jackson/map/ser/NullSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/NullSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/NullSerializer;->a:Lorg/codehaus/jackson/map/ser/NullSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    .line 30
    return-void
.end method
