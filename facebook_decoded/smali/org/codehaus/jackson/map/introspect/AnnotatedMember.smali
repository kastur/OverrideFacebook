.class public abstract Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.super Lorg/codehaus/jackson/map/introspect/Annotated;
.source "AnnotatedMember.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/Annotated;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract f()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract g()Ljava/lang/reflect/Member;
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->g()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/reflect/Member;)V

    .line 31
    return-void
.end method
