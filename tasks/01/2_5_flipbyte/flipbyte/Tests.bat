@echo off

REM ���� � ����������� ��������� ���������� ����� ������ �������� ��������� ������
SET MyProgram="%~1"

REM ������ �� ������� ��� ���������, ��������� ���� � ���������
if %MyProgram%=="" (
	echo Please specify path to program
	exit /B 1
)

REM ------------------------------- ���������� ����� -------------------------------
echo -------------
REM ������ ��� ����������
echo Input:
%MyProgram% && goto err
echo Test 1 passed
echo -------------
REM ������ � ������ ����������
echo Input: 123 ���
%MyProgram% 123 ��� && goto err
echo Test 2 passed
echo -------------
REM ������ � ���������� �� ������
echo Input: ���
%MyProgram% ��� && goto err
echo Test 3 passed
echo -------------
REM ������ � ���������� ������ ����
echo Input: -6
%MyProgram% -6 && goto err
echo Test 4 passed
echo -------------
REM ������ � ���������� �� �������� � ������� ���������� ��������
echo Input: 256
%MyProgram% 256 && goto err
echo Test 5 passed
echo -------------
REM ------------------------------- ���������� ����� -------------------------------
REM ��������� ����� � ����������� ���������
echo Input: 0
%MyProgram% 0 || goto err
echo Test 6 passed
echo -------------
echo Input: 255
%MyProgram% 255 || goto err
echo Test 7 passed
echo -------------
echo Input: 1
%MyProgram% 1 || goto err
echo Test 8 passed
echo -------------
REM ��������� ����� � ������������ �����
echo Input: 36
%MyProgram% 36 || goto err
echo Test 9 passed
echo -------------
REM -------------------------------------------------------------------------------
REM ����� ������ �������
echo All tests passed successfuly
exit /B 0

REM ���� ����� �������� � ������ ������
:err
echo Test failed
exit /B 1