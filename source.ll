; ModuleID = 'source.c'
source_filename = "source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [100 x i32], align 16
  %5 = alloca [100 x i32], align 16
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  %8 = bitcast [100 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %8) #2
  %9 = bitcast [100 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %9) #2
  store i32 0, i32* %2, align 4, !tbaa !2
  br label %10

10:                                               ; preds = %22, %0
  %11 = load i32, i32* %2, align 4, !tbaa !2
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4, !tbaa !2
  %15 = load i32, i32* %2, align 4, !tbaa !2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %16
  store i32 %14, i32* %17, align 4, !tbaa !2
  %18 = load i32, i32* %2, align 4, !tbaa !2
  %19 = load i32, i32* %2, align 4, !tbaa !2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 %20
  store i32 %18, i32* %21, align 4, !tbaa !2
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4, !tbaa !2
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4, !tbaa !2
  br label %10

25:                                               ; preds = %10
  store i32 0, i32* %2, align 4, !tbaa !2
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i32, i32* %2, align 4, !tbaa !2
  %28 = icmp slt i32 %27, 100
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4, !tbaa !2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !2
  %34 = load i32, i32* %2, align 4, !tbaa !2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !2
  %38 = add nsw i32 %37, %33
  store i32 %38, i32* %36, align 4, !tbaa !2
  %39 = load i32, i32* %3, align 4, !tbaa !2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %29
  %42 = load i32, i32* %2, align 4, !tbaa !2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !2
  %46 = load i32, i32* %2, align 4, !tbaa !2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !2
  %50 = mul nsw i32 %49, %45
  store i32 %50, i32* %48, align 4, !tbaa !2
  br label %51

51:                                               ; preds = %41, %29
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %2, align 4, !tbaa !2
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4, !tbaa !2
  br label %26

55:                                               ; preds = %26
  %56 = bitcast [100 x i32]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %56) #2
  %57 = bitcast [100 x i32]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %57) #2
  %58 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #2
  %59 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #2
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
