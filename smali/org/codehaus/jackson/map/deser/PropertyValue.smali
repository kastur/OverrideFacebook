.class abstract Lorg/codehaus/jackson/map/deser/PropertyValue;
.super Ljava/lang/Object;
.source "PropertyValue.java"


# instance fields
.field public final a:Lorg/codehaus/jackson/map/deser/PropertyValue;

.field public final b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/PropertyValue;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/PropertyValue;->a:Lorg/codehaus/jackson/map/deser/PropertyValue;

    .line 22
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/PropertyValue;->b:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method
